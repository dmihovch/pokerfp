extends Node3D
class_name Table


@onready var player_creator = preload("res://scenes/Player.tscn")
@onready var spawner: Spawner = $Spawner




func _ready():
	print("table ready")
	var player_list = []
	for i in range(spawner.get_child_count()) :
		var player: Player = player_creator.instantiate()
		player.init(i)
		player_list.append(player)
		
	spawner.assign_seats(player_list)
