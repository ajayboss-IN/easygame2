extends "res://script/enemymain.gd"


func _on_tri_body_entered(body):
	trigger(body,"idle")


func _on_saw_body_entered(body):
	enemy(body)

func _on_saw_2_body_entered(body):
	enemy(body)
