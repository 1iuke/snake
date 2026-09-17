class_name StorageUtility extends AbstractUtility

const NAME:String = "StorageUtility"
const SAVE_PATH := "user://scores.cfg"
var _config := ConfigFile.new()

func get_utility_name() -> String: return NAME

func init():
	var error := _config.load(SAVE_PATH)
	if error != OK and error != ERR_FILE_NOT_FOUND:
		push_warning("Could not load progress: %s" % error_string(error))

func load_int(section: String, key: String, default_value: int = 0) -> int:
	return int(_config.get_value(section, key, default_value))
	
func set_int(section: String, key: String, value: int) -> void:
	_config.set_value(section, key, value)

func flush() -> Error:
	return _config.save(SAVE_PATH)
