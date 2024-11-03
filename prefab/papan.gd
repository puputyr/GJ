extends RigidBody2D

var speed = 500.0
var collider = get_node(./CollisionShape2D)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hello World")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	collider.move_and_slide(Vector2.RIGHT * speed)

