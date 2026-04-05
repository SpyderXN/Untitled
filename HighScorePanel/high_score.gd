extends Control

@onready var total_damage: Label = $"PanelContainer/VBoxContainer/Total Damage"

func _process(_delta: float) -> void:
	total_damage.text = str(Globals.high_score_track)
