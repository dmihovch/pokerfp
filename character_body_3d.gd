extends CharacterBody3D



@onready var cam = $Camera3D

var pitch := 0.0
var sens := 0.05


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	print("Character is ready")

func _unhandled_input(e: InputEvent) -> void:
	if e is InputEventMouseMotion:
		rotate_y(-e.relative.x * sens)
		pitch -= e.relative.y * sens
		pitch = clamp(pitch, deg_to_rad(-89), deg_to_rad(89))
		cam.rotation.x = pitch
	if e is InputEventKey and e.pressed and e.keycode == KEY_ESCAPE:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
