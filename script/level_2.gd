extends "res://script/enemymain.gd"


func _on_tri_body_entered(body):
	trigger(body,"idle")


func _on_spike_body_entered(body):
	enemy(body)


func _on_tri_2_body_entered(body):
	trigger(body,"spi2")


func _on_spike_2_body_entered(body):
	enemy(body)


func _on_tri_3_body_entered(body):
	trigger(body,"spi")
