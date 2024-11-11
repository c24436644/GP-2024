extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	var f:float
	var g:float
	var h:float

	f = 10 # assignment
	g = 20
	h = 3

	f += 2 # add 2 to f
	f = f + 2
	g = f - 5
	
	h *= 2
	g = h / 3
	
	var i:int
	var j:int
	
	var k:int
	
	i = 10
	j = 4
	k = i / j
	
	print(i)
	print(j)
	print(k)
	
	print(f)
	print(h)
	print(g)
	
	i = 10 % 2
	
	
	
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("glob_pos", global_position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("glo_rotation", global_position)
	
	rotation += 0.1 
	
	position.x += 2
	position.y += 0
	
	pass


func _on_area_2d_2_area_entered(area: Area2D) -> void:
	print("Collided!")
	
	
	print(area)
	area.queue_free()
	pass # Replace with function body.
