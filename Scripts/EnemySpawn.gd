extends Node2D

@onready var enemy_scene = [load("res://Scenes/Enemies/Straight-Shot-Enemy.tscn")
]


func _ready():
	for i in range(10):
		var enemy = enemy_scene[0].instantiate()
		randomize()
		enemy.position.x = randf_range(50, 910)
		enemy.position.y = -100
		add_child(enemy)
	
