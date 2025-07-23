extends Node


func _ready():
	print("main _ready() called")	
	var table = preload("res://scenes/Table.tscn")
	add_child(table.instantiate())
	print("instantiated table and added to root")
