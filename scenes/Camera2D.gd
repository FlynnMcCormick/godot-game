extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO


func _ready():
	center = get_viewport_rect().size/2
	target = owner.get_node("Player")
	position = target.global_position
	zoom = Vector2(.3,.3)

func _process(delta):
	if Input.is_action_just_pressed("zoom"):
		if zoomed:
			target = null
			zoomed = false
		else:
			target = owner.get_node("Player")
			zoomed = true

	if zoomed:
		position = target.global_position
		zoom = Vector2(.3,.3)
		#zoom = zoom.move_toward(Vector2(0.3,0.3), .03)
		#position = position.move_toward(target.global_position,20)
		
	else:
		position = center
		zoom = Vector2(1,1)
		#zoom = zoom.move_toward(Vector2(1,1), 0.03)
		#position = position.move_toward(center,20)
