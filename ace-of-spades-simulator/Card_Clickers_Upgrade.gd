extends Area2D

func _physics_process(delta: float) -> void:
	$"../../Clicker_Card/Cards label".text = ("Cards: " + str(GlobalVars.cards))
	$"../Shop Card Label".text = ("Card Clickers: " + str(GlobalVars.cards_shop_amount))
	$"../Shop Card Price".text = ("Price: " + str(GlobalVars.cards_upgrade_cost))
	$"../../Clicks per Card/Clicker Label".text = ("Cards per Click: " + str(GlobalVars.cards_per_click))
	$"../../Clicks per Card/Clicker Price".text = ("Price: " + str(GlobalVars.clicker_upgrade_cost))
	
	
#Cards and Timer Loop Per Shop Card
func Clicker_cards_Count():
	if GlobalVars.cards_shop_amount <= 1:
		$"../Shop Card Timer".start()
		
func _on_shop_card_timer_timeout() -> void:
	GlobalVars.cards = (round(GlobalVars.cards_shop_amount * 1) + GlobalVars.cards)
	print("Works = Test")
	$"../Shop Card Timer".start()
		

#FIRST SHOP UPGRADE
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if GlobalVars.cards_upgrade_cost <= GlobalVars.cards:
			#Add 1 Card 
			GlobalVars.cards -= GlobalVars.cards_upgrade_cost
			GlobalVars.cards_upgrade_cost = round(GlobalVars.cards_upgrade_cost * 1.5)
			GlobalVars.cards_shop_amount = GlobalVars.cards_shop_amount + 1
			
			Clicker_cards_Count()
			
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
