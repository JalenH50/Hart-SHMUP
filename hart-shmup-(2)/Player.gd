extends CharacterBody2D

const SPEED = 300
var bullet = load("res://Bullet.tscn")
func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("left","right")
	if direction:
		velocity.x=direction*SPEED
	else:
		velocity.x=move_toward(velocity.x,0,SPEED)
	
	if Input.is_action_just_pressed("shoot"):
		var instance = bullet.instantiate()
		instance.position = $Marker2D.global_position
		get_parent().add_child(instance)
	move_and_slide()
