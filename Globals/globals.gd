extends Node

var damage_points: int
var damage_score = 0
var high_score_track: float


func damage_counter(value):
	damage_points = damage_score + value
	damage_score = damage_points
	print(damage_score)
	
