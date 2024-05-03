extends PopupMenu


var source_territory = null
var destination_territory = null
var armies_to_move : int = 0

@onready var spin_box = $MoveArmiesDialog/VBoxContainer/SpinBox
@onready var ok_button = $MoveArmiesDialog/VBoxContainer/OKButton



func show_move_armies_dialog(source, destination, armies_to_move):
	source_territory = source
	destination_territory = destination
	spin_box.max = armies_to_move
	spin_box.value = armies_to_move
	popup_centered()





func _on_ok_button_pressed():
	var armies_to_move = int(spin_box.value)
	territory_manager.handle_army_movement(source_territory, destination_territory, armies_to_move)
	hide()
	
	
func handle_army_movement(source, destination, armies_to_move):
	source.armies -= armies_to_move
	destination.armies += armies_to_move
	source.owner.update_territory(source)
	destination.owner.update_territory(destination)
	print("Moved", armies_to_move, "armies from", source.name, "to", destination.name)
