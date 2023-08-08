extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player
var chase = false
@export var speed = 3000

func _physics_process(delta):
#	velocity.y +=gravity + delta
	if chase == true :
		player = get_node("../player")
		var direction  =(player.position-self.position).normalized()
		velocity.x = direction.x * speed + delta
#	else:
#		velocity.x =0
	move_and_slide()

func _on_playerdetcec_body_entered(body):
	if body.name =="player":
		chase=true

func _on_playerdetcec_body_exited(body):
	if body.name =="player":
		chase=false


func _on_playerdead_body_entered(body):
	if body.name =="player":
		get_tree().reload_current_scene()
