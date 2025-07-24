extends Node3D
class_name Table


@onready var player_creator = preload("res://player/player.tscn")
@onready var spawner = preload("res://spawner/spawner.tscn")




func _ready():
	print("in ready func of table")
	var spawner_instance: Spawner = spawner.instantiate()
	add_child(spawner_instance)
	print("table ready")
	var player_list = []
	for i in range(spawner_instance.get_child_count()) :
		var player: Player = player_creator.instantiate()
		player.init(i)
		player_list.append(player)
		
	spawner_instance.assign_seats(player_list)
