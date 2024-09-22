extends State
class_name PlayerJump

const JUMP_VELOCITY := -400.0

@onready var player := $"../.."
@onready var animator := $"../../AnimatedSprite2D"

func Enter() -> void:
	animator.play("Jump")
	if player.is_on_floor():
		player.velocity.y = JUMP_VELOCITY
	print_debug("Entering jump state...")

func Exit() -> void:
	print_debug("Exiting jump state...")

func Update(_delta:float) -> void:
	StateSwitchLogic()

func StateSwitchLogic() -> void:
	# Wait for the animation to be over so we can transition to FALLING
	if animator.frame == 1.0:
		state_transition.emit(self, "Falling")
