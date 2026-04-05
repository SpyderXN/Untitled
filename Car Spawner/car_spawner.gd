extends Node2D

@export var car: PackedScene
var can_spawn = true
@onready var spawntimer: Timer = $Spawntimer
@onready var spawns: Node2D = $Spawns

var direction: int = 1

func _process(_delta: float) -> void:
	if can_spawn:
		can_spawn = false
		var car_spawn = car.instantiate() as Area2D
		car_spawn.position.x = randi_range(0, 0)
		spawntimer.start()
		spawns.add_child(car_spawn)
	


func _on_spawntimer_timeout() -> void:
	can_spawn = true
