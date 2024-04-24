extends CanvasLayer

@export var game_controller: Node

@export var Player: Node

@export var TerritoryManager: Node


func _on_deploy_troops_pressed():
	# # Replace with function body.
	game_controller.OnDeploymentButtonClicked()
	# Hide the button after deploying troops
	#var deploy_button = get_node("Deploy Troops")

func _on_next_phase_pressed():
	game_controller.nextPhase() # Replace with function body.

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


func _on_dice_pressed():
	game_controller.RollDice()
	
	
	
	


	
	

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
	game_controller.Fortify()
	
	
func _on_trade_in_cards_pressed():
	game_controller.cardTrade() # Replace with function body.
	

func _on_end_turn_pressed():
	game_controller.endTurn() # Replace with function body.


func _on_start_turn_pressed():
	game_controller.StartTurn()





func _on_attack_pressed():
	print("hello") # Replace with function body.
	TerritoryManager.free()
