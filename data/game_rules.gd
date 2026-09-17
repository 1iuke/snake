class_name GameRules
extends Resource

@export_group("Scoring")
@export_range(1, 100, 1) var score_per_food := 10

@export_group("Speed")
@export_range(0.05, 0.50, 0.01) var start_speed := 0.16
@export_range(0.03, 0.20, 0.005) var min_speed := 0.065
@export_range(0.0001, 0.01, 0.0001) var speed_up_per_point := 0.0015
