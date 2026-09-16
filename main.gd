extends Node2D

const COLS := 20
const ROWS := 20
const CELL_SIZE := 30.0
const BOARD_ORIGIN := Vector2(60, 140)
const START_SPEED := 0.16
const MIN_SPEED := 0.065

var snake: Array[Vector2i] = []
var direction := Vector2i.RIGHT
var queued_direction := Vector2i.RIGHT
var food := Vector2i.ZERO
var score := 0
var high_score := 0
var move_timer := 0.0
var move_interval := START_SPEED
var game_over := false
var paused := false


func _ready() -> void:
	randomize()
	set_process(true)
	new_game()


func new_game() -> void:
	snake = [Vector2i(7, 10), Vector2i(6, 10), Vector2i(5, 10)]
	direction = Vector2i.RIGHT
	queued_direction = direction
	score = 0
	move_timer = 0.0
	move_interval = START_SPEED
	game_over = false
	paused = false
	spawn_food()
	queue_redraw()


func _process(delta: float) -> void:
	if game_over or paused:
		return
	move_timer += delta
	if move_timer >= move_interval:
		move_timer -= move_interval
		step_game()


func _unhandled_key_input(event: InputEvent) -> void:
	if not event is InputEventKey:
		return
	var key_event := event as InputEventKey
	if not key_event.pressed or key_event.echo:
		return
	match key_event.keycode:
		KEY_UP, KEY_W:
			queue_direction(Vector2i.UP)
		KEY_DOWN, KEY_S:
			queue_direction(Vector2i.DOWN)
		KEY_LEFT, KEY_A:
			queue_direction(Vector2i.LEFT)
		KEY_RIGHT, KEY_D:
			queue_direction(Vector2i.RIGHT)
		KEY_P, KEY_SPACE:
			if not game_over:
				paused = not paused
				queue_redraw()
		KEY_ENTER, KEY_KP_ENTER, KEY_R:
			if game_over:
				new_game()


func queue_direction(next_direction: Vector2i) -> void:
	if not game_over and next_direction != -direction:
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
		score += 10
		high_score = maxi(high_score, score)
		move_interval = maxf(MIN_SPEED, START_SPEED - score * 0.0015)
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


func finish_game() -> void:
	game_over = true
	high_score = maxi(high_score, score)
	queue_redraw()


func cell_rect(cell: Vector2i, inset := 2.0) -> Rect2:
	return Rect2(
		BOARD_ORIGIN + Vector2(cell) * CELL_SIZE + Vector2.ONE * inset,
		Vector2.ONE * (CELL_SIZE - inset * 2.0)
	)


func _draw() -> void:
	draw_rect(Rect2(Vector2.ZERO, Vector2(720, 800)), Color("10161d"))
	draw_header()
	draw_board()
	draw_food()
	draw_snake()
	draw_footer()
	if paused or game_over:
		draw_overlay()


func draw_header() -> void:
	draw_string(ThemeDB.fallback_font, Vector2(60, 64), "SNAKE", HORIZONTAL_ALIGNMENT_LEFT, -1, 36, Color("75e6a4"))
	draw_string(ThemeDB.fallback_font, Vector2(60, 105), "SCORE  %04d" % score, HORIZONTAL_ALIGNMENT_LEFT, -1, 22, Color("eaf7ef"))
	draw_string(ThemeDB.fallback_font, Vector2(480, 105), "BEST  %04d" % high_score, HORIZONTAL_ALIGNMENT_LEFT, -1, 22, Color("95a5b2"))


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


func draw_food() -> void:
	var center := cell_rect(food, 0.0).get_center()
	draw_circle(center, 10.0, Color("ff6b6b"))
	draw_line(center + Vector2(2, -9), center + Vector2(7, -15), Color("75e6a4"), 3.0)


func draw_footer() -> void:
	draw_string(ThemeDB.fallback_font, Vector2(60, 775), "ARROWS / WASD   •   SPACE PAUSE", HORIZONTAL_ALIGNMENT_LEFT, -1, 17, Color("768794"))


func draw_overlay() -> void:
	var board_rect := Rect2(BOARD_ORIGIN, Vector2(COLS, ROWS) * CELL_SIZE)
	draw_rect(board_rect, Color(0.02, 0.04, 0.06, 0.78))
	var title := "PAUSED" if paused else "GAME OVER"
	var hint := "SPACE TO CONTINUE" if paused else "ENTER / R TO RESTART"
	draw_string(ThemeDB.fallback_font, Vector2(0, 410), title, HORIZONTAL_ALIGNMENT_CENTER, 720, 42, Color("eaf7ef"))
	draw_string(ThemeDB.fallback_font, Vector2(0, 455), hint, HORIZONTAL_ALIGNMENT_CENTER, 720, 19, Color("75e6a4"))
