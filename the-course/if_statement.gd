extends Node2D

var i = 0

func _draw() -> void:
	i += 1 
	print("draw called")
	var r = get_viewport_rect()
	
	var h = r.size.x / 2
	#draw_rect(Rect2(r), Color.RED, true, 10, true)
	var l = r.size.y / 2
	
	
	var p = get_viewport().get_mouse_position()
	print(p)
	
	if p.x < h and p.y < l:
		draw_rect(Rect2(0, 0, h, l), Color.LIGHT_SLATE_GRAY, true, 10, true)
		
	elif p.x < h and p.y > l:
		draw_rect(Rect2(0, l, h, l), Color.GRAY, true, 10, true)
		
	elif p.x > h and p.y > l:
		draw_rect(Rect2(h, l, h, l), Color.DIM_GRAY, true, 10, true)
		
	elif p.x > h and p.y < l:
		draw_rect(Rect2(h, 0, h, l), Color.WEB_GRAY, true, 10, true)
		

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
