extends State
class_name PlayerIdle
	
@onready var animator := $"../../AnimatedSprite2D"

func Enter():
	animator.play("Idle")
	print_debug("Entering idle state...")
func Exit():
	print_debug("Exiting idle state...")
func Update(_delta: float):
	StateSwitchLogic()
func Physics_Update(_delta: float):
	pass
	
func StateSwitchLogic():
	if Input.is_action_just_pressed("Right") or Input.is_action_just_pressed("Left") or Input.is_action_just_released("Left") or Input.is_action_just_released("Right"):
		state_transition.emit(self, "Walking")
	if Input.is_action_just_pressed("Jump"):
		state_transition.emit(self, "Jumping")
