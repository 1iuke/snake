extends Node2D

func _draw() -> void:
	draw_circle(Vector2.ZERO, 10.0, Color("ff6b6b"))
	draw_line(Vector2(2, -9), Vector2(7, -15), Color("75e6a4"), 3.0)
