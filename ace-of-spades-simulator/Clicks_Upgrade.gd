extends Area2D

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if GlobalVars.clicker_upgrade_cost <= GlobalVars.cards:
			#Add one Clicker
			GlobalVars.clicker_shop_amount = GlobalVars.clicker_shop_amount + 1
			GlobalVars.cards_per_click = GlobalVars.cards_per_click + 1
			GlobalVars.cards -= GlobalVars.clicker_upgrade_cost
			GlobalVars.clicker_upgrade_cost = round(GlobalVars.clicker_upgrade_cost * 1.75)
			print("Clicked")
