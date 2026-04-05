extends Node2D

@export var spawners: Array[PackedScene]
@onready var spawns: Node2D = $Spawns

func _ready() -> void:
	randomize()
	
	if spawners.is_empty():
		return
	
	var scene = spawners.pick_random()
	var spawns_scene = scene.instantiate()
	
	spawns_scene.position = position
	spawns.add_child(spawns_scene)
	
	print(spawns_scene.position)
