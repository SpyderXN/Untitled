extends Car

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var car_horn: AudioStreamPlayer2D = $CarHorn


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		animation_player.play("Blink")
		car_horn.playing = true
