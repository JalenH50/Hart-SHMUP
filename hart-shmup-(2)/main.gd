extends Node2D

var enemy = load("res://Enemy.tscn")
@export var txtScore:Label
var score:int=0

func _ready():
	$Timer.start()
	if txtScore:
		txtScore.text = str(score)
		
func incrementScore() -> void:
	score +=1
	if txtScore:
		txtScore.txt = str(score)
	
func _on_spawn_timer_timeout():
	spawnEnemy()
	
func spawnEnemy():
	var instance = enemy.instantiate()
	instance.position = Vector2((randf_range(200,1000)),0)
	get_tree().current_scene.add_child(instance)

func _on_bullet_enemy_hit() -> void:
	incrementScore()
