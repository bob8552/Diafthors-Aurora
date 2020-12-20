extends KinematicBody2D

# Player movement speed
export var speed = 300

func _physics_process(delta):
	
	# Get player input
	var direction: Vector2
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	
	# If input is digital, normalize it for diagonal movement
	if abs(direction.x) == 1 and abs(direction.y) == 1:
		direction = direction.normalized()
	
	# Apply movement
	var movement = speed * direction * delta
	move_and_collide(movement)
	
# i spent like 2 hours on this dumb retarded function
func _on_Area2D_body_entered(body):
	$AnimationPlayer.play("FadeInAndOut") #fade out and in cutscene thingie
	yield(get_tree().create_timer(1.8), "timeout")
	get_tree().change_scene("res://Level2.tscn")
