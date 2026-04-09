extends Car

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		animation_player.play("Blink")
