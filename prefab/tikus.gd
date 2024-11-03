extends CharacterBody2D

@onready var anim = $AnimatedSprite2D
const SPEED = 100.0


func _physics_process(delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		if direction < 0:
			anim.flip_h = true
		elif direction > 0:
			anim.flip_h = false
		anim.play("walking")
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		anim.play("default")

	move_and_slide()
