extends Area2D

signal player_entered(body)

func _on_body_entered(body: Node2D) -> void:
	player_entered.emit(body)
