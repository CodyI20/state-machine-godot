extends State

@onready var player := $"../.."
@onready var animator := $"../../AnimatedSprite2D"

func Enter() -> void:
	animator.play("Landing")
	player.velocity.x = 0
	print_debug("Entering landing state...")

func Exit() -> void:
	print_debug("Exiting landing state...")

func Update(_delta:float) -> void:
	StateSwitchLogic()

func Physics_Update(_delta:float) -> void:
	pass
	
func StateSwitchLogic() -> void:
	if (Input.is_action_pressed("Left") or Input.is_action_pressed("Right")) and player.is_on_floor():
		state_transition.emit(self, "Walking")

# Signal from the AnimatedSprite2D so the animation can fully play before entering Idle state
func AnimationFinished() -> void:
	if player.is_on_floor():
		state_transition.emit(self, "Idle")
