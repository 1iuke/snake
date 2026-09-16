extends Node2D


var score := 0
var high_score := 0


func _on_snake_game_score_changed(
	new_score: int,
	new_high_score: int
) -> void:
	score = new_score
	high_score = new_high_score
	queue_redraw()


func _draw() -> void:
	draw_string(
		ThemeDB.fallback_font,
		Vector2(60, 64),
		"SNAKE",
		HORIZONTAL_ALIGNMENT_LEFT,
		-1,
		36,
		Color("75e6a4")
	)
	draw_string(
		ThemeDB.fallback_font,
		Vector2(60, 105),
		"SCORE  %04d" % score,
		HORIZONTAL_ALIGNMENT_LEFT,
		-1,
		22,
		Color("eaf7ef")
	)
	draw_string(
		ThemeDB.fallback_font,
		Vector2(480, 105),
		"BEST  %04d" % high_score,
		HORIZONTAL_ALIGNMENT_LEFT,
		-1,
		22,
		Color("95a5b2")
	)
