extends CharacterBody2D

@export var tile_size: int
var input_dir
var moving = false


func _physics_process(_delta: float) -> void:
	movement_input()
	

func movement_input():
	input_dir = Vector2.ZERO
	
	if Input.is_action_just_pressed("Up"):
		input_dir = Vector2(0, -1)
		move()
	elif Input.is_action_just_pressed("Down"):
		input_dir = Vector2(0, 1)
		move()
	elif Input.is_action_just_pressed("Left"):
		input_dir = Vector2(-1, 0)
		move()
	elif Input.is_action_just_pressed("Right"):
		input_dir = Vector2(1, 0)
		move()

func move():
	if input_dir:
		if moving == false:
			moving = true
			var tween = create_tween()
			tween.tween_property(self, "position", position + input_dir * tile_size, .03)
			tween.tween_callback(move_false)

func move_false():
	moving = false
