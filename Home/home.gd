extends Node2D


func _on_start_pressed() -> void:
	TransitionLayer.change_scene_to("res://Main/main.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
