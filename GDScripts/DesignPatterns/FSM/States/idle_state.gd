extends State
class_name PlayerIdle
	

func Enter():
	$"../../AnimatedSprite2D".play("Idle")
	print_debug("Entering idle state...")
func Exit():
	print_debug("Exiting idle state...")
func Update(_delta: float):
	if Input.is_action_just_pressed("Right") or Input.is_action_just_pressed("Left"):
		state_transition.emit(self, "Running")
func Physics_Update(_delta: float):
	pass
