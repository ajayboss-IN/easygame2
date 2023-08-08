extends "res://script/enemymain.gd"


func _on_ro_body_entered(body):
	enemy(body)


func _on_button_pressed():
	get_tree().change_scene_to_file("res://eachlevel/ui.tscn")
