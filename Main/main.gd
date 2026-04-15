extends Node2D

@onready var destruction_meter: ProgressBar = $"UI/Destruction Meter/Damagebar"
@onready var high_score: Control = $UI/HighScore
@onready var player: CharacterBody2D = $Player
@onready var camera_2d: Camera2D = $Player/Camera2D
@onready var player_move: Timer = $PlayerMove



func _ready() -> void:
	high_score.visible = false

func _process(_delta: float) -> void:
	
	if destruction_meter.value >= 100:
		game_over_panel()
	
	if player.global_position.x < 90 or player.global_position.x > 750 or player.global_position.y > 512:
		game_over_panel()
	
	#Return to home screen after pressing the esc 
	if Input.is_action_just_pressed("Exit"):
		TransitionLayer.change_scene_to("uid://c3547exvepv4o")
	
	
	#if player.moving == false:
		#player_move.start()


func _on_finish_line_player_entered(body: Variant) -> void:
	if body.name == "Player":
		game_over_panel()


func _on_player_move_timeout() -> void:
	game_over_panel()


func game_over_panel():
	var tween = create_tween()
	tween.tween_property(player, "moving", true, .05)
	high_score.visible = true
