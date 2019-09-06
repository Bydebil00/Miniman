extends Area2D

export(String) var next_level = null

func _on_Flag_body_entered(body):
	Global.goto_scene("res://Scenes/Fase2.tscn")
