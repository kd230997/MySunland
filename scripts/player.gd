extends CharacterBody2D
const SPEED = 400.0
@onready var animation: AnimatedSprite2D = $Animation

var state = "idle"
var directionState = "down"

func get_input() -> void:
	var direction := Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	
	if velocity.x > 1 or velocity.x < -1 or velocity.y > 1 or velocity.y < -1:
		state = "running"
	else:
		state = "idle"
	
	if direction.x > 0:
		directionState = "right"
	elif direction.x < 0:
		directionState = "left"
	elif direction.y > 0:
		directionState = "down"
	elif direction.y < 0:
		directionState = "up"
	
	animation.animation = "%s_%s" % [state,directionState] 

func _physics_process(_delta: float) -> void:
	get_input()
	move_and_slide()
