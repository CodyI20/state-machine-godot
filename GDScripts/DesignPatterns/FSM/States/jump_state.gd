extends State
class_name PlayerJump

func Enter() -> void:
	$"../../AnimatedSprite2D".play("Jump")
	print_debug("Entering jump state...")

func Exit() -> void:
	pass

func Update(_delta:float) -> void:
	pass

func Physics_Update(_delta:float) -> void:
	pass
	
