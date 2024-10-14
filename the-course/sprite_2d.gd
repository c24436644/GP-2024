extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@export var speed:float = 1
@export var rot_degrees:float = 90


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	# rotate(deg_to_rad(rot_speed * delta))
	# translate(Vector2(0, speed * delta),)
	
	# global_translate(Vector2(0, speed * delta))
	
	var s = speed
	var rd = rot_degrees
	if (Input.is_key_pressed(KEY_SHIFT)):
		s = s * 5
		rd = rd * 2
	
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, - s * delta))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0, s * delta))
	if Input.is_key_pressed(KEY_LEFT):
		rotate(-deg_to_rad(rd * delta))
	if Input.is_key_pressed(KEY_RIGHT):
		rotate(deg_to_rad(rd * delta))
	pass
