extends Node
class_name Spawner

@onready var spawns_list = get_children()
func _ready():
	for spawn in spawns_list:
		print(spawn.name)

func assign_seats(player_list):
	
	var i: int = 0
	for spawn in spawns_list:
		spawn.add_child(player_list[i])
		print("player: ", player_list[i].id, " assigned to spawn: ", spawn.name)
		i = i+1
		
