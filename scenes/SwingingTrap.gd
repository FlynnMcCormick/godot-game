extends Node2D

func _ready():
	$AnimationPlayer.play("Swing")


func _on_Area2D_body_entered(body):
	if "Player" in str(body):
		print("playerdead")
