extends Node


@onready var spawns_list = get_children()
func _ready():
	for spawn in spawns_list:
		print(spawn.name)

func assign_seats(player_list):
	var spawns_list = get_children()
	
	var i: int = 0
	for spawn in spawns_list:
		spawn.add_child(player_list[i])
		i = i+1
		
