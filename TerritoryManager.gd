# Declare these variables at the top of your script, outside any function.
#var selected_attacking_territory = null
#var selected_defending_territory = null
#var last_selected_button = null
extends Node2D 


#@export var game_controller: Node

var selected_attacking_territory: String = ""
var selected_defending_territory: String = ""

func handle_territory_selection(territory_name: String):
	print("Territory selected:", territory_name)
	var territory_button = get_node(territory_name)
	print("Node fetched:", territory_button)
	
	if selected_attacking_territory == "":
		selected_attacking_territory = territory_name
		territory_button.modulate = Color.RED  # Highlight attacking territory
	elif selected_defending_territory == "":
		if territory_name != selected_attacking_territory:
			selected_defending_territory = territory_name
			territory_button.modulate = Color.BLUE  # Highlight defending territory
			# Check if valid attack and resolve
			resolve_attack()

func resolve_attack():
	if selected_attacking_territory != "" and selected_defending_territory != "":
		var attacking_territory = game_controller.GetTerritoryByName(selected_attacking_territory)
		var defending_territory = game_controller.GetTerritoryByName(selected_defending_territory)
		if attacking_territory and defending_territory:
			game_controller.ResolveAttack(attacking_territory, defending_territory)
		reset_selections()

func reset_selections():
	if selected_attacking_territory != "":
		get_node(selected_attacking_territory).modulate = Color.WHITE  # Reset color
	if selected_defending_territory != "":
		get_node(selected_defending_territory).modulate = Color.WHITE  # Reset color
	selected_attacking_territory = ""
	selected_defending_territory = ""






























#func _on_TerritoryButton_Pressed(button: TextureButton):
	#
	#var territory_name = button.name
	#var territory = game_controller.GetTerritoryByName(territory_name)
	#print("Pressed territory: ", territory_name)
	#if not territory:
		#print("Territory not found")
		#return
#
	#if game_controller.CurrentPlayer == territory.Owner:
		#if not game_controller.SelectedAttackingTerritory:
			#game_controller.SelectAttackingTerritory(territory)
			#$'/{territory_name}'.modulate = Color.RED  # Change button color to red
		#else:
			#game_controller.SelectDefendingTerritory(territory)
			#$'/{territory_name}'.modulate = Color.BLUE  # Change button color to blue
			#game_controller.ResolveAttack(game_controller.SelectedAttackingTerritory, territory)
			#
##func _on_reset_button_color(territory_name, color):
	##$'/{territory_name}'.modulate = color
#
 ### Ensure your script extends a proper node type if needed.
##
### Make sure the game controller is correctly referenced.
#
### Declare the variables at the class level as shown previously.
##
##
##func _on_TerritoryButton_Pressed(territory_button: TextureButton):
	##print("Button pressed: ", territory_button.name)  # Confirm function is called.
	##var territory_name = territory_button.name
	##var territory = game_controller.GetTerritoryByName(territory_name)
	##
	##if territory == null:
		##print("Territory not found: ", territory_name)
		##return
##
	##print("Territory owner: ", territory.owner, " Current Player: ", game_controller.CurrentPlayer)
	##
	##if selected_attacking_territory == null and territory.owner == game_controller.CurrentPlayer:
		##if last_selected_button:
			##last_selected_button.modulate = Color.WHITE
		##selected_attacking_territory = territory
		##territory_button.modulate = Color.RED
		##last_selected_button = territory_button
		##print("Selected attacking territory: ", territory.name)
	##elif selected_attacking_territory != null and territory.owner != game_controller.CurrentPlayer:
		##selected_defending_territory = territory
		##territory_button.modulate = Color.BLUE
		##print("Selected defending territory: ", territory.name)
	##elif selected_attacking_territory != null and territory == selected_attacking_territory:
		##reset_selection()
##
##func reset_selection():
	##if last_selected_button:
		##last_selected_button.modulate = Color.WHITE
	##selected_attacking_territory = null
	##selected_defending_territory = null
	##last_selected_button = null
	##print("Selections have been reset.")
#



