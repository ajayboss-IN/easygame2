extends Node2D


func _on_str_pressed():
	get_tree().change_scene_to_file("res://scene/level_1.tscn")


func _on_qut_pressed():
	get_tree().quit()


func _on_about_pressed():
	get_tree().change_scene_to_file("res://scene/about.tscn")


func _on_giveup_pressed():
	get_tree().change_scene_to_file("res://scene/i_give_up.tscn")
