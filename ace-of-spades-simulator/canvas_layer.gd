extends CanvasLayer

@onready var label: Label = $card_amount
@onready var var_card: Area2D = $"../Clicker_Card/Area2D"


func _process(delta: float) -> void:
	label.text = "Cards: " + str(var_card.cards)
