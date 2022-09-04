extends Area2D


func _ready():
	$AnimationPlayer.play("Spike Trigger")

func _on_Area2D_body_entered(body):
	if "Player" in str(body):
		print("playerdead")

