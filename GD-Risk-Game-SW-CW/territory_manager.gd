extends Node2D


var selected_attacking_territory = null
var selected_defending_territory = null
var last_selected_button = null
#####################################################################

func handle_territory_selection(territory_name):
	
	var territory = game_controller.GetTerritoryByName(territory_name)
	print("Button pressed: ", territory)  # Confirm function is called.
	
	if territory == null:
		print("Territory not found: ", territory_name)
		return
		
	# Check if a territory is already selected for attack
	if game_controller.SelectedAttackingTerritory == null:
		# No attacking territory selected yet, try setting this one
		if territory.Armies > 1 and territory.Owner == game_controller.CurrentPlayer:
			game_controller.SelectAttackingTerritory(territory)
			print("Selected as attacking territory: ", territory)
		else:
			print("Invalid selection for attacking territory. Must have more than 1 army and must belong to the current player.")
	else:
		# An attacking territory is already selected, check if this is a valid defending territory
		if game_controller.IsValidAttack(game_controller.SelectedAttackingTerritory, territory) and territory.Owner != game_controller.CurrentPlayer:
			game_controller.SelectDefendingTerritory(territory)
			print("Selected as defending territory: ", territory)
			# Optionally, proceed to resolve attack
			game_controller.ResolveAttack()
			#game_controller.ResetTerritoryColors()  # If you are highlighting territories, reset them after the attack
		else:
			print("Invalid selection for defending territory. Must be adjacent to the attacking territory and belong to a different player.")







#/////////////////////////////////////////Territory Moving//////////////////////////////////////////////////////////////////////

var dragging = false
var source_territory = null
var destination_territory = null



func _on_Territory_mouse_entered(territory):
	if dragging:
		destination_territory = territory
		print("Entered territory ", territory)



func _on_Territory_mouse_exited(territory):
	if dragging and destination_territory == territory:
		destination_territory = null
		print("Exited territory ", territory)



func _on_Territory_gui_input(event, territory):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			dragging = true
			source_territory = territory
			destination_territory = territory  # Start dragging from this territory
			print("Started dragging from ", territory)
		else:
			dragging = false
			if destination_territory:
				print("Stopped dragging at ", destination_territory)
				if source_territory != destination_territory:
					print("\nDragged from ", source_territory, " to ", destination_territory)





func handle_army_movement(source, destination):
	pass
	#print("Move armies from %s to %s" % [source.name, destination.name])
	# Implement army movement logic here
