extends CharacterBody2D

@onready var FSM := $FSM

#func _ready() -> void:
	#if !is_on_floor():
		#FSM.current_state = 

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	move_and_slide()
