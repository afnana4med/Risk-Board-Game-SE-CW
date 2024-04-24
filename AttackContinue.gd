extends Button


# Assuming this script is attached to the same node as the Attack button
# and the ConfirmationDialog is a child of this node.

func _ready():
	# Hide the ConfirmationDialog on startup.
	$ConfirmationDialog.hide()
	#$AttackButton.connect("pressed", self, "_on_AttackButton_pressed")

  

func _on_attack_pressed():
	# This function is called when the Attack button is pressed.
	# Show the ConfirmationDialog only in this case.
	$ConfirmationDialog.popup_centered()
	# Or you can use show() if you do not want to center it
	# $ConfirmationDialog.show()

func _on_ConfirmationDialog_confirmed():
	# This function is called when the player confirms the action in the dialog.
	# Proceed with the attack.
	print("Attack confirmed. Proceeding with the attack.")
