extends Node


@onready var spawns_list = get_children()

func _ready():
	for spawn in spawns_list:
		print(spawn.name)
