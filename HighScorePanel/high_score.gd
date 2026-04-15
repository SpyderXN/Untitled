extends Control

@onready var total_damage: Label = $"PanelContainer/VBoxContainer/Total Damage"

func _process(_delta: float) -> void:
	total_damage.text = str(Globals.high_score_track)


func _on_retry_pressed() -> void:
	TransitionLayer.change_scene_to("uid://cxsy0p707iwjn")
	Globals.reset()


func _on_exit_pressed() -> void:
	TransitionLayer.change_scene_to("uid://c3547exvepv4o")
	Globals.reset()
