extends Camera2D

var target = null
var zoomed = false
var center = Vector2.ZERO


func _ready():
	center = get_viewport_rect().size/2

func _process(delta):
	if Input. is_action_is_pressed("zoom"):
		if not zoomed:
			target = center
			zoomed = false
		else:
			target = owner.get_node("Player").global_position
			zoomed = true


