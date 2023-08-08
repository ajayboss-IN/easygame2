extends "res://script/enemymain.gd"




func _on_spike_body_entered(body):
	enemy(body)


func _on_tri_body_entered(body):
	trigger(body,"tri1")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://eachlevel/ui.tscn")
