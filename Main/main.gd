extends Node2D

@onready var destruction_meter: ProgressBar = $"UI/Destruction Meter/Damagebar"
@onready var high_score: Control = $UI/HighScore
@onready var player: CharacterBody2D = $Player


func _ready() -> void:
	high_score.visible = false

func _process(_delta: float) -> void:
	if destruction_meter.value == 100:
		high_score.visible = true


func _on_finish_line_player_entered(body: Variant) -> void:
	if body.name == "Player":
		var tween = create_tween()
		tween.tween_property(player, "moving", true, .05)
		high_score.visible = true
		print("Player entered")
