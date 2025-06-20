extends CharacterBody2D


const SPEED = 150.0
var direction = -1


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	if is_on_wall():
		direction *= -1
	velocity.x = direction * SPEED

	move_and_slide()
