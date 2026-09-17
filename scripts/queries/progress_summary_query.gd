class_name ProgressSummaryQuery extends AbstractQuery

func do() -> Dictionary:
	var model := get_model(ProgressModel.NAME) as ProgressModel
	assert(model != null, "ProgressModel is not registered")

	return {
		"high_score": model.high_score,
		"games_played": model.games_played,
	}
