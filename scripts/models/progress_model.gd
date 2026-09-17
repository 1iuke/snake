class_name ProgressModel extends AbstractModel

const NAME:String = "ProgressModel"

const SCORE_SECTION := "scores"
const HIGH_SCORE_KEY := "high_score"
const STATS_SECTION := "stats"
const GAMES_PLAYED_KEY := "games_played"

var high_score := 0
var games_played := 0
var _storage: StorageUtility

var progress_saved := EasyEvent.new()

func get_model_name() -> String: return NAME


func init() -> void:
	_storage = get_utility(StorageUtility.NAME) as StorageUtility
	assert(_storage != null, "StorageUtility is not registered")
	high_score = maxi(0, _storage.load_int(SCORE_SECTION, HIGH_SCORE_KEY))
	games_played = maxi(0, _storage.load_int(STATS_SECTION, GAMES_PLAYED_KEY))

func update_high_score(candidate: int) -> void:
	high_score = maxi(high_score, candidate)

func record_completed_game(final_score: int) -> void:
	update_high_score(final_score)
	games_played += 1
	_storage.set_int(SCORE_SECTION, HIGH_SCORE_KEY, high_score)
	_storage.set_int(STATS_SECTION, GAMES_PLAYED_KEY, games_played)
	var error := _storage.flush()
	if error != OK:
		push_error("Could not save progress: %s" % error_string(error))
		return
	progress_saved.trigger()
	
