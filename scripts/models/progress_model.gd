class_name ProgressModel extends AbstractModel

const NAME:String = "ProgressModel"


var high_score := BindableProperty.new(0)
var games_played := 0
var progress_saved := EasyEvent.new()

func get_model_name() -> String: return NAME


func init() -> void:
	pass

func update_high_score(candidate: int) -> void:
	high_score.value = maxi(int(high_score.value), candidate)
