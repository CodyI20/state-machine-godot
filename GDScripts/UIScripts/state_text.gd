extends Label

# This function is connected to the signal given by the FSM in the player scene
func ChangeText(new_text: String) -> void:
	text = new_text
