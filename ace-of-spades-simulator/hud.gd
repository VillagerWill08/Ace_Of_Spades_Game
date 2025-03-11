extends CanvasLayer

@onready var label: Label = $Control/Label
@onready var cards: Area2D = $"../Clicker_Card/Area2D"

func _process(delta: float) -> void:
	$Control/Label.text = str(cards.card)
