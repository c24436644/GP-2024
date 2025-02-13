extends CharacterBody2D


@export var color:Color = Color.GREEN
@export var size = 100
@onready var radius = size / 2 
@export var line_size = 2


func _draw() -> void:
	draw_line(Vector2(35, 0), Vector2(35, 35), color, line_size)
	draw_line(Vector2(35, 35), Vector2(0, 35), color, line_size)
