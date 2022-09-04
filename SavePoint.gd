extends Area2D

func _ready():
	$AnimationPlayer.play("checkpoint")

func _process(delta):

	if GameStats.get_spawn() != self:
		$AnimationPlayer.play("checkpoint")
func _on_SavePoint_body_entered(body):
	if "Player" in str(body):
		GameStats.set_spawn(self)
		$AnimationPlayer.play("saved")
		if body.is_in_group("Player"):
			print("Player Dead")
			if GameStats.check_reset() == false:
				body.global_position = GameStats.get_spawn().global_position




