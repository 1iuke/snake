class_name ProgressSummaryQuery extends AbstractQuery

func do() -> Dictionary:
	var model := get_model(ProgressModel.NAME) as ProgressModel
	assert(model != null, "ProgressModel is not registered")

	return {
		"high_score": int(model.high_score.value),
		"games_played": model.games_played,
	}
