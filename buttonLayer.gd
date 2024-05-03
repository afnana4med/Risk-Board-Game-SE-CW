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
	


func _on_end_attack_phase_pressed():
	game_controller.endAttack() # Replace with function body.

var source_territory = territory_manager.source_territory
var destination_territory = territory_manager.destination_territory
var armies_to_move : int = MoveArmiesDialog.armies_to_move
func _on_fortify_pressed():
	print("Fortify")
	#MoveArmiesDialog.show_move_armies_dialog(source_territory, destination_territory, armies_to_move)
	
	
	
	
#func handle_army_movement(source, destination):
	#print("Move armies from %s to %s" % [source.name, destination.name])
	# Implement army movement logic here



func _on_trade_in_cards_pressed():
	game_controller.cardTrade() # Replace with function body.
	

func _on_end_turn_pressed():
	game_controller.endTurn() # Replace with function body.


func _on_start_turn_pressed():
	game_controller.StartTurn()
	
	
	

#//////////////////////////////Try to change color or territory Not work//////////////////////////////////////////////

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



