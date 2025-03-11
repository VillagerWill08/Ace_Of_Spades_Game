extends Node

#Starting Variables
var cards = 0
var cards_per_click = 1

#First Upgrades
var cards_shop_amount = 0
var cards_upgrade_cost = 10

func _process(delta: float) -> void:
	print("Cards: " + str(GlobalVars.cards))
	print("Card Clickers: " + str(GlobalVars.cards_shop_amount))
	print("Card Clicker Cost: " + str(GlobalVars.cards_upgrade_cost))
