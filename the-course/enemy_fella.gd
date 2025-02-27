extends CharacterBody2D

var speed = 100
var attacking = false
var idle

func _process(delta):
	if attacking:
		position.x = position.x - speed * delta

	if idle:
		position.x = position.x + speed / delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Jump_fella":
		attacking = true
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Jump_fella":
		attacking = false
	
		
