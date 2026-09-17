class_name CompleteGameCommand extends AbstractCommand

var final_score: int

func _init(value: int) -> void:
	final_score = value

func execute() -> void:
	var system := get_system(ProgressSystem.NAME) as ProgressSystem
	assert(system != null, "ProgressSystem is not registered")
	system.complete_game(final_score)
