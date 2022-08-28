extends Node2D
export (int) var follow_speed = 50

func _ready():
	$AnimationPlayerlayer.play ("spin")
	
func _process(delta):
	$Path2D/PathFollow2D.offset += follow_speed * delta
