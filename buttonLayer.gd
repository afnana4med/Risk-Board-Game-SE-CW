extends CanvasLayer

#@export var game_controller: Node

@export var Player: Node

#@export var TerritoryManager: Node


func _on_deploy_troops_pressed():
	# # Replace with function body.
	game_controller.OnDeploymentButtonClicked()
	# Hide the button after deploying troops
	#var deploy_button = get_node("Deploy Troops")

func _on_next_phase_pressed():
	game_controller.nextPhase() # Replace with function body.
	
#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


func _on_attack_pressed():
	game_controller.ResolveAttack()
	$AttackPanel/ConfirmationDialog.popup_centered()
	
func _on_confirmation_dialog_confirmed():
	# If the user presses "OK" to continue attacking
	game_controller.call("ResolveAttack")
	$AttackPanel/ConfirmationDialog.hide() 
	
	
	
	


#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#
#
#func _on_roll_dice_button_pressed():
	#var attacker_dice_count = attacker_dice.value
	#var attacker_rolls = game_controller.RollDice(attacker_dice_count)  # Call C# method
	#var defender_dice_count = defender_dice.value
	#var defender_rolls = game_controller.RollDice(defender_dice_count)  # Call C# method
	#update_dice_results(attacker_rolls, defender_rolls)
#
#func update_dice_results(attacker_rolls, defender_rolls):
	#var result_text = "Attacker Rolls: %s\nDefender Rolls: %s" % [attacker_rolls, defender_rolls]
	#dice_results.text = result_text


#var selected_attacking_territory = null
#var selected_defending_territory = null


#func _on_attack_pressed():
	#if selected_attacking_territory != null and selected_defending_territory != null:
		#game_controller.ResolveAttack(selected_attacking_territory, selected_defending_territory)
		## Reset selections after the attack
		#reset_selections()
	#else:
			#print("You must select both an attacking and a defending territory.")
#
#func reset_selections():
	#selected_attacking_territory = null
	#selected_defending_territory = null
	## Reset any UI elements that indicate selection
	#update_territory_buttons()  # This function would reset the modulate color or other indicators
#
#func update_territory_buttons():
	#for territory_button in get_tree().get_nodes_in_group("TerritoryButtons"):
		#territory_button.modulate = Color.WHITE  # Reset color to white or default
		#
		#
		#
		
		
		
		
		
		

#///////////////////////////////////////////////////////////////////////////////////////////





func _on_end_attack_phase_pressed():
	game_controller.endAttack() # Replace with function body.
	
	
	

func _on_fortify_pressed():
	handle_army_movement("Asia - Ural", "Asia - Afghanistan" )
	
func handle_army_movement(source, destination):
	print("Move armies from %s to %s" % [source.name, destination.name])
	# Implement army movement logic here
	
	
	
func _on_trade_in_cards_pressed():
	game_controller.cardTrade() # Replace with function body.
	

func _on_end_turn_pressed():
	game_controller.endTurn() # Replace with function body.


func _on_start_turn_pressed():
	game_controller.StartTurn()

#////////////////////////////////////////////////////////////////////////////

#func _on_attack_pressed():
	#print("Start attack")
	#if game_controller.SelectedAttackingTerritory and game_controller.SelectedDefendingTerritory:
		## Change the colors of the territories to show selection on the UI
		#var attack_button = game_controller.SelectedAttackingTerritory.name
		#var defend_button = game_controller.SelectedDefendingTerritory.name
		#attack_button.modulate = Color.RED
		#defend_button.modulate = Color.BLUE
#
		## Now resolve the attack
		#game_controller.ResolveAttack()
#
		## After the attack, reset the selection for the next turn or phase
		##game_controller.SelectedAttackingTerritory = null
		##game_controller.SelectedDefendingTerritory = null
#
		## Reset the color of the buttons if needed
		## _on_reset_button_color(attack_button, Color.WHITE)
		## _on_reset_button_color(defend_button, Color.WHITE)
	#else:
		#print("Must select both attacking and defending territories before attacking.")


#func _on_reset_button_color(territory_name: String, color: Color):
	##var territory_button = TerritoryManager.get_node(territory_name)
	#if territory_button:
		#territory_button.modulate = color
		
		
#func _on_attack_pressed():
	#print("Start attack")
	#if game_controller.SelectedAttackingTerritory and game_controller.SelectedDefendingTerritory:
		## Change the colors of the territories to show selection on the UI
		#var attack_button = game_controller.SelectedAttackingTerritory.name
		#var defend_button = game_controller.SelectedDefendingTerritory.name
		#attack_button.modulate = Color.RED
		#defend_button.modulate = Color.BLUE
#
		## Now resolve the attack
		#game_controller.ResolveAttack()
#
		## After the attack, reset the selection for the next turn or phase
		#game_controller.SelectedAttackingTerritory = null
		#game_controller.SelectedDefendingTerritory = null
#
		## Reset the color of the buttons if needed
		## _on_reset_button_color(attack_button, Color.WHITE)
		## _on_reset_button_color(defend_button, Color.WHITE)
	#else:
		#print("Must select both attacking and defending territories before attacking.")



