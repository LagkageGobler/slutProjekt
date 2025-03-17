extends RigidBody2D
var bullet_speed = 100
func _physics_process(delta: float) -> void:
	position += transform.x * bullet_speed 
