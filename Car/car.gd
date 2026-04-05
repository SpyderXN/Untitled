extends Area2D

var dir = Vector2.RIGHT
@export var speed = 100
@export var points: int

func _process(delta: float) -> void:
	position += dir * speed * delta


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Globals.damage_counter(points)
		queue_free()
