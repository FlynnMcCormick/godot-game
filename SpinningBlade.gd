extends Node2D
export (int) var follow_speed = 50

func _ready():
	$AnimationPlayer.play ("spin")
	
func _process(delta):
	$Path2D/PathFollow2D.offset += 50 * delta
	print(delta)
