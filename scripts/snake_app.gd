class_name SnakeAppArchitecture extends Architecture

func init():
#	Utility
	register_utility(StorageUtility.new())
#	Model 
	register_model(ProgressModel.new())
#	System 
	register_system(ProgressSystem.new())
