class_name CompleteGameCommand extends AbstractCommand

var final_score: int

func _init(value: int) -> void:
	final_score = value

func execute() -> void:
	var model := get_model(ProgressModel.NAME) as ProgressModel
	assert(model != null, "ProgressModel is not registered")
	model.record_completed_game(final_score)
