extends Control 


@onready var score_label: Label = %ScoreLabel
@onready var best_label: Label = %BestLabel




func _on_snake_game_score_changed(
	new_score: int,
	new_high_score: int
) -> void:
	score_label.text = "SCORE  %04d" % new_score
	best_label.text = "BEST  %04d" % new_high_score
