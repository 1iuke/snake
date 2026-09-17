extends Control 

@onready var score_label: Label = %ScoreLabel
@onready var best_label: Label = %BestLabel
var score_tween: Tween
const BEST_NORMAL_COLOR := Color("95a5b2")
const BEST_RECORD_COLOR := Color("ffd166")

var displayed_high_score := -1
var best_tween: Tween


func _on_snake_game_score_changed(
	new_score: int,
	new_high_score: int
) -> void:
	score_label.text = "SCORE  %04d" % new_score
	best_label.text = "BEST  %04d" % new_high_score
	
	var is_initial_update := displayed_high_score < 0
	var is_new_record := (
		not is_initial_update
		and new_high_score > displayed_high_score
	)
	displayed_high_score = new_high_score
	
	animate_score()

	if is_new_record:
		animate_new_record()
		
func animate_score() -> void:
	if score_tween:
		score_tween.kill()
		
	score_label.pivot_offset = score_label.size / 2.0
	score_label.scale = Vector2.ONE
	score_tween = create_tween()
	score_tween.tween_property(
		score_label,
		"scale",
		Vector2(1.25, 1.25),
		0.08
	).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)
	score_tween.tween_property(
		score_label,
		"scale",
		Vector2.ONE,
		0.18
	).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)	
	
func animate_new_record() -> void:
	if best_tween:
		best_tween.kill()

	best_label.pivot_offset = best_label.size / 2.0
	best_label.scale = Vector2.ONE
	best_label.add_theme_color_override(
		"font_color",
		BEST_RECORD_COLOR
	)

	best_tween = create_tween()
	best_tween.tween_property(
		best_label,
		"scale",
		Vector2(1.3, 1.3),
		0.12
	).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_OUT)

	best_tween.tween_property(
		best_label,
		"scale",
		Vector2.ONE,
		0.25
	).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)

	best_tween.tween_interval(0.35)
	best_tween.tween_callback(
		func() -> void:
			best_label.add_theme_color_override(
				"font_color",
				BEST_NORMAL_COLOR
			)
	)
