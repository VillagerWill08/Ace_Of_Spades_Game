extends Area2D

#FIRST SHOP UPGRADE

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if GlobalVars.cards_upgrade_cost <= GlobalVars.cards:
			#Add 1 Card 
			GlobalVars.cards -= GlobalVars.cards_upgrade_cost
			GlobalVars.cards_upgrade_cost = round(GlobalVars.cards_upgrade_cost * 1.5)
			GlobalVars.cards_shop_amount = GlobalVars.cards_shop_amount + 1
			
			print("Cards: " + str(GlobalVars.cards))
			print("Card Clickers: " + str(GlobalVars.cards_shop_amount))
			print("Card Clicker Cost: " + str(GlobalVars.cards_upgrade_cost))
			
	if GlobalVars.cards_shop_amount >= 10:
		$"..".frame = 1
	elif GlobalVars.cards_shop_amount >= 20:
		$"..".frame = 2
	elif GlobalVars.cards_shop_amount >= 30:
		$"..".frame = 3
	elif GlobalVars.cards_shop_amount >= 40:
		$"..".frame = 4
	elif GlobalVars.cards_shop_amount >= 50:
		$"..".frame = 5
