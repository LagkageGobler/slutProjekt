extends Area2D
var bullet_speed = 500
func _physics_process(delta: float) -> void:
	position += transform.x * bullet_speed * delta 



func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	queue_free()
