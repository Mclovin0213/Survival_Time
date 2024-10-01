extends InventorySlot
class_name FinalCookingSlot

func _can_drop_data(at_position: Vector2, slot: Variant) -> bool:
	return false
