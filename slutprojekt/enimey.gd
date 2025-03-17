extends CharacterBody2D

@onready var terget = $"../base"
const SPEED = 300.0

func _physics_process(delta: float) -> void:
	var direction = (terget.position - position).normalized()
	velocity = direction * SPEED
	move_and_slide()
