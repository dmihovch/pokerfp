extends Node3D

@onready var player_creator = preload("res://scenes/Player.tscn")
@onready var spawner = $Spawner




func _ready():
	print("table ready")
	var player_list = []
	for i in range(spawner.get_child_count()) :
		player_list.append(player_creator.instantiate())
		
	spawner.assign_seats(player_list)
