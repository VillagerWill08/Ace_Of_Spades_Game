extends Area2D

#MAIN CARD CLICKER


func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		GlobalVars.cards = GlobalVars.cards + GlobalVars.cards_per_click
		print("Cards: " + str(GlobalVars.cards))
