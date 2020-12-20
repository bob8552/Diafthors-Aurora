extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
var bruh
func _on_Play_button_down():
	$AnimationPlayer.play("FadeInAndOut") #fade out and in cutscene thingie
	yield(get_tree().create_timer(1.8), "timeout")
	bruh = get_tree().change_scene("res://Level1.tscn")
