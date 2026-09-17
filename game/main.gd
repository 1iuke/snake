extends Node2D
signal score_changed(new_score: int, new_high_score: int)
@onready var eat_sound: AudioStreamPlayer2D = $EatSound

const COLS := 20
const ROWS := 20
const CELL_SIZE := 30.0
const BOARD_ORIGIN := Vector2(60, 140)
@export var rules: GameRules


var snake: Array[Vector2i] = []
var direction := Vector2i.RIGHT
var queued_direction := Vector2i.RIGHT
var food := Vector2i.ZERO
const FOOD_SCENE := preload("res://actors/food.tscn")
var food_visual: Node2D

var score := 0
var progress_model: ProgressModel

@onready var move_timer: Timer = $MoveTimer


enum GameState {
	PLAYING,
	PAUSED,
	GAME_OVER,
}

var game_state := GameState.PLAYING

func _ready() -> void:
	progress_model = SnakeApp.get_model(ProgressModel.NAME) as ProgressModel
	assert(progress_model != null, "ProgressModel is not registered")
	progress_model.progress_saved.register(
		_on_progress_saved
	).un_register_when_node_exiting_tree(self)
	randomize()
	food_visual = FOOD_SCENE.instantiate()
	add_child(food_visual)
	new_game()
	
func _on_progress_saved() -> void:
	print(
        "Progress saved: best=%d, games=%d"
		% [progress_model.high_score, progress_model.games_played]
	)	
func set_game_state(next_state: GameState) -> void:
	if game_state == next_state:
		return

	game_state = next_state

	match game_state:
		GameState.PLAYING:
			move_timer.paused = false
		GameState.PAUSED:
			move_timer.paused = true
		GameState.GAME_OVER:
			move_timer.stop()
	queue_redraw()
	

func new_game() -> void:
	snake = [Vector2i(7, 10), Vector2i(6, 10), Vector2i(5, 10)]
	direction = Vector2i.RIGHT
	queued_direction = direction
	score = 0
	score_changed.emit(score, progress_model.high_score)
	set_game_state(GameState.PLAYING)
	move_timer.start(rules.start_speed)
	spawn_food()
	queue_redraw()





func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("move_up"):
		queue_direction(Vector2i.UP)
	elif event.is_action_pressed("move_down"):
		queue_direction(Vector2i.DOWN)
	elif event.is_action_pressed("move_left"):
		queue_direction(Vector2i.LEFT)
	elif event.is_action_pressed("move_right"):
		queue_direction(Vector2i.RIGHT)
	elif event.is_action_pressed("pause_game"):
		match game_state:
			GameState.PLAYING:
				set_game_state(GameState.PAUSED)
			GameState.PAUSED:
				set_game_state(GameState.PLAYING)
		queue_redraw()
	elif event.is_action_pressed("restart_game"):
		if game_state == GameState.GAME_OVER:
			new_game()


func queue_direction(next_direction: Vector2i) -> void:
	if  (game_state == GameState.PLAYING and next_direction != -direction):
		queued_direction = next_direction


func step_game() -> void:
	direction = queued_direction
	var new_head := snake[0] + direction
	var ate_food := new_head == food

	if not ate_food:
		snake.pop_back()
	if is_outside_board(new_head) or new_head in snake:
		finish_game()
		return

	snake.push_front(new_head)
	if ate_food:
		eat_sound.play()
		score += rules.score_per_food
		progress_model.update_high_score(score)
		score_changed.emit(score, progress_model.high_score)
		move_timer.wait_time = maxf(
			rules.min_speed,
			rules.start_speed - score * rules.speed_up_per_point)
		spawn_food()
	queue_redraw()


func is_outside_board(cell: Vector2i) -> bool:
	return cell.x < 0 or cell.x >= COLS or cell.y < 0 or cell.y >= ROWS


func spawn_food() -> void:
	var free_cells: Array[Vector2i] = []
	for y in ROWS:
		for x in COLS:
			var cell := Vector2i(x, y)
			if cell not in snake:
				free_cells.append(cell)
	if free_cells.is_empty():
		finish_game()
		return
	food = free_cells[randi() % free_cells.size()]
	
	food_visual.position = (
	BOARD_ORIGIN
	+ Vector2(food) * CELL_SIZE
	+ Vector2.ONE * CELL_SIZE / 2.0
)


func finish_game() -> void:
	move_timer.stop()
	set_game_state(GameState.GAME_OVER)
	SnakeApp.send_command(CompleteGameCommand.new(score))
	queue_redraw()


func cell_rect(cell: Vector2i, inset := 2.0) -> Rect2:
	return Rect2(
		BOARD_ORIGIN + Vector2(cell) * CELL_SIZE + Vector2.ONE * inset,
		Vector2.ONE * (CELL_SIZE - inset * 2.0)
	)


func _draw() -> void:
	draw_rect(Rect2(Vector2.ZERO, Vector2(720, 800)), Color("10161d"))
	draw_board()
	draw_snake()
	draw_footer()
	if game_state != GameState.PLAYING:
		draw_overlay()



func draw_board() -> void:
	draw_rect(Rect2(BOARD_ORIGIN - Vector2(4, 4), Vector2(COLS, ROWS) * CELL_SIZE + Vector2(8, 8)), Color("25313b"))
	draw_rect(Rect2(BOARD_ORIGIN, Vector2(COLS, ROWS) * CELL_SIZE), Color("172129"))
	for x in range(COLS + 1):
		var px := BOARD_ORIGIN.x + x * CELL_SIZE
		draw_line(Vector2(px, BOARD_ORIGIN.y), Vector2(px, BOARD_ORIGIN.y + ROWS * CELL_SIZE), Color(1, 1, 1, 0.025))
	for y in range(ROWS + 1):
		var py := BOARD_ORIGIN.y + y * CELL_SIZE
		draw_line(Vector2(BOARD_ORIGIN.x, py), Vector2(BOARD_ORIGIN.x + COLS * CELL_SIZE, py), Color(1, 1, 1, 0.025))


func draw_snake() -> void:
	for index in snake.size():
		var color := Color("75e6a4") if index == 0 else Color("43b978")
		draw_rect(cell_rect(snake[index], 3.0), color)
	if not snake.is_empty():
		var center := cell_rect(snake[0], 0.0).get_center()
		var side := Vector2(-direction.y, direction.x) * 5.0
		var front := Vector2(direction) * 6.0
		draw_circle(center + front + side, 2.2, Color("10161d"))
		draw_circle(center + front - side, 2.2, Color("10161d"))



func draw_footer() -> void:
	draw_string(ThemeDB.fallback_font, Vector2(60, 775), "ARROWS / WASD   •   SPACE PAUSE", HORIZONTAL_ALIGNMENT_LEFT, -1, 17, Color("768794"))


func draw_overlay() -> void:
	var board_rect := Rect2(BOARD_ORIGIN, Vector2(COLS, ROWS) * CELL_SIZE)
	draw_rect(board_rect, Color(0.02, 0.04, 0.06, 0.78))
	var is_paused := game_state == GameState.PAUSED

	var title := "PAUSED" if is_paused else "GAME OVER"
	var hint := "SPACE TO CONTINUE" if is_paused else "ENTER / R TO RESTART"
	draw_string(ThemeDB.fallback_font, Vector2(0, 410), title, HORIZONTAL_ALIGNMENT_CENTER, 720, 42, Color("eaf7ef"))
	draw_string(ThemeDB.fallback_font, Vector2(0, 455), hint, HORIZONTAL_ALIGNMENT_CENTER, 720, 19, Color("75e6a4"))


func _on_move_timer_timeout() -> void:
	if game_state == GameState.PLAYING:
		step_game()
func _exit_tree() -> void:
	progress_model = null
