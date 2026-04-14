extends Control

@onready var damagebar: ProgressBar = $Damagebar


func _ready() -> void:
	damagebar.value = 0

func _process(_delta: float) -> void:
	@warning_ignore("integer_division")
	damagebar.value = (Globals.damage_score / 3) * 25
	Globals.high_score_track = damagebar.value
