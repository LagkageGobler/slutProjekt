extends Area2D

var Life = 10

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	Life -= 1
	if Life >= 0:
		"game over"
