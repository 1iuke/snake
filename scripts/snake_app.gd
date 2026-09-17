class_name SnakeAppArchitecture extends Architecture

func init():
	register_utility(StorageUtility.new())
	register_model(ProgressModel.new())
