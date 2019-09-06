extends Area2D

export(String) var next_level = null

func _on_Flag3_body_entered(body):
	Global.goto_scene("res://Scenes/Conclusion.tscn")

