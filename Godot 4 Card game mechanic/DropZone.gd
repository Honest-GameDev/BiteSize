extends HBoxContainer

@export var card: PackedScene = null

func _can_drop_data(_at_position, _data):
	return true

func _drop_data(_at_position, data):
	var dropped_card = card.instantiate()
	
	add_child(dropped_card)
	dropped_card.texture = data["texture"]
	
	CardActions.emit_signal("card_played", data["id"])
	
	
