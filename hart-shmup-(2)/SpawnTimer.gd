extends Node2D

func _ready():
	$spawnTimer.start()
	
func _on_spawn_timer_timeout():
	print("timer timeout")
