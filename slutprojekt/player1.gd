extends CharacterBody2D
var speed = 200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
var bullet_speed = 600
var bullet = preload("res://bullet.tscn")
var can_fire = true


func _process(delta: float) -> void:
	var velocity = Vector2()
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("højre"):
		velocity.x += 1
	
	if Input.is_action_pressed("venstre"):
		velocity.x -= 1
	
	if Input.is_action_pressed("ned"):
		velocity.y += 1
	
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		
	velocity = velocity.normalized() * speed
	position += velocity * delta
	
	if Input.is_action_pressed("Shoting") and can_fire:
		var bullet_instance = bullet.instantiate()
		bullet_instance.rotation_degrees = rotation_degrees
		bullet_instance.position = $Bullet_point.get_global_position()
		bullet_instance
		get_tree().get_root().add_child(bullet_instance)
