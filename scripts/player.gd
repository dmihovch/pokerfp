extends CharacterBody3D
class_name Player

@onready var cam = $Camera3D

var pitch := 0.0
var sens := 0.01
var id: int = -1


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	print("player ", id, " ready")
	

func init(player_id: int):
	id = player_id

func _unhandled_input(e: InputEvent) -> void:
	
	if e is InputEventMouseMotion:
		rotate_y(-e.relative.x * sens)
		pitch -= e.relative.y * sens
		pitch = clamp(pitch, deg_to_rad(-89), deg_to_rad(89))
		cam.rotation.x = pitch
	if e is InputEventKey and e.pressed and e.keycode == KEY_ESCAPE:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
