extends State
class_name PlayerRun

const SPEED = 300.0

func Enter() -> void:
	$"../../AnimatedSprite2D".play("Running")
	print_debug("Entering running state...")
	
func Exit() -> void:
	print_debug("Exiting running state...")

func Update(_delta:float) -> void:
	if !Input.is_action_pressed("Left") and !Input.is_action_pressed("Right"):
		state_transition.emit(self, "Idle")
	if Input.is_action_just_pressed("Jump"):
		state_transition.emit(self, "Jumping")

func Physics_Update(_delta:float) -> void:
	pass
