class_name ProgressSystem extends AbstractSystem

const NAME:String = "ProgressSystem"
const SCORE_SECTION := "scores"
const HIGH_SCORE_KEY := "high_score"
const STATS_SECTION := "stats"
const GAMES_PLAYED_KEY := "games_played"

var _model: ProgressModel
var _storage: StorageUtility

func get_system_name() -> String: return NAME


func init() -> void:
	_model = get_model(ProgressModel.NAME) as ProgressModel
	_storage = get_utility(StorageUtility.NAME) as StorageUtility
	assert(_model != null, "ProgressModel is not registered")
	assert(_storage != null, "StorageUtility is not registered")

	_model.high_score.set_value_without_event(
		maxi(0, _storage.load_int(SCORE_SECTION, HIGH_SCORE_KEY))
	)		
	_model.games_played = maxi(
		0,
		_storage.load_int(STATS_SECTION, GAMES_PLAYED_KEY)
	)

func complete_game(final_score: int) -> void:
	_model.update_high_score(final_score)
	_model.games_played += 1
	_storage.set_int(SCORE_SECTION, HIGH_SCORE_KEY,     int(_model.high_score.value))
	_storage.set_int(STATS_SECTION, GAMES_PLAYED_KEY, _model.games_played)

	var error := _storage.flush()
	if error != OK:
		push_error("Could not save progress: %s" % error_string(error))
		return

	_model.progress_saved.trigger()
