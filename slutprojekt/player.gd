extends Area2D
var speed = 200


func _process(delta: float) -> void:
	var velocity = Vector2()
	
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
