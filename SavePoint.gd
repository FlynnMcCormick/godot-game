extends Area2D

#func _ready():
	#$AnimationPlayer.play("checkpoint")
	
func _process(delta):
	if GameStats.get_spawn() != self:
		$AnimationPlayer.play("checkpoint")
		print(GameStats.get_spawn())



func _on_SavePoint_body_entered(body):
	if "Player" in str(body):
		GameStats.set_spawn(self)
		$AnimationPlayer.play("saved")
