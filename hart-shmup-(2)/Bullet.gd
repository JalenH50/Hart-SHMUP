extends Node2D

signal enemy_hit

func _process(delta: float) -> void:
	position.y -= 3

func _on_area_2d_body_entered(body:Node2D) -> void:
	if body.is_in_group("Enemy"):
		enemy_hit.emit()
		body.queue_free()
		queue_free()
