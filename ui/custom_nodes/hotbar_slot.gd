extends InventorySlot
class_name HotbarSlot

func _ready() -> void:
	$NumTextureRect/NumLabel.text = str(get_index() + 1)

func _can_drop_data(at_position: Vector2, origin_slot: Variant) -> bool:
	if origin_slot is InventorySlot:
		return false
	
	print(ItemConfig.get_item_resource(origin_slot.item_key).is_equipable)
	return ItemConfig.get_item_resource(origin_slot.item_key).is_equipable
