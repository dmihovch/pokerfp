extends Node


func _ready():
	print("hello")
	var table = preload("res://scenes/Table.tscn")
	print("preloaded")
	add_child(table.instantiate())
	print("instantiated")
