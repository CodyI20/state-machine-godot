extends State
class_name PlayerRun

const EXTRA_SPEED = 450.0
@onready var player := $"../.."
@onready var animator := $"../../AnimatedSprite2D"

func Enter() -> void:
	animator.play("Running")
	print_debug("Entering running state...")
	
func Exit() -> void:
	print_debug("Exiting running state...")

func Update(_delta:float) -> void:
	StateSwitchLogic()
	
		
func StateSwitchLogic() -> void:
	if !Input.is_action_pressed("Run"):
		state_transition.emit(self, "Walking")
	if !Input.is_action_pressed("Left") and !Input.is_action_pressed("Right"):
		state_transition.emit(self, "Idle")
	if Input.is_action_just_pressed("Jump"):
		state_transition.emit(self, "Jumping")

func Physics_Update(_delta:float) -> void:
	pass
