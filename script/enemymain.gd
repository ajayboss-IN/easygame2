extends Node

#ithu enemy detecion
func enemy(body):
	if body.name == "player":
		body.health -= 1
		get_tree().reload_current_scene()

#ithu animation detecion
func trigger(body,anim):
	if body.name == "player":
		$AnimationPlayer.play(anim)

