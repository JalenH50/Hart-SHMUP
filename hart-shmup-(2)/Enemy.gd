extends StaticBody2D

func _process(delta: float) -> void:
	position.y += 1

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		pass
