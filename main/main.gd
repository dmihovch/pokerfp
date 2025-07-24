extends Node
class_name MainClass

func _ready():
	print("main _ready() called")	
	var table = preload("res://table/table.tscn")
	add_child(table.instantiate())
	print("instantiated table and added to root")
