extends Node

const INVENTORY_SIZE = 28

var inventory : Array = []

func _enter_tree() -> void:
	EventSystem.INV_try_to_pickup_item.connect(try_to_pickup_item)
	EventSystem.INV_ask_update_inventory.connect(send_inventory)
	EventSystem.INV_switch_to_item_indexes.connect(switch_item_indexes)
	EventSystem.INV_add_item.connect(add_item)
	EventSystem.INV_delete_crafting_blueprint_costs.connect(delete_crafting_costs)
	
func _ready() -> void:
	inventory.resize(INVENTORY_SIZE)

func send_inventory() -> void:
	EventSystem.INV_inventory_updated.emit(inventory)

func try_to_pickup_item(item_key : ItemConfig.Keys, destroy_pickup : Callable) -> void:
	if not get_free_slots():
		return
	
	add_item(item_key)
	destroy_pickup.call()

func get_free_slots() -> int:
	return inventory.count(null)

func add_item(item_key : ItemConfig.Keys) -> void:
	for i in inventory.size():
		if inventory[i] == null:
			inventory[i] = item_key
			break
	
	send_inventory()

func switch_item_indexes(idx1 : int, idx2 : int) -> void:
	var item_key1 = inventory[idx1]
	inventory[idx1] = inventory[idx2]
	inventory[idx2] = item_key1
	send_inventory()

func delete_crafting_costs(costs : Array[BlueprintCostData]) -> void:
	for cost in costs:
		for i in cost.amount:
			delete_item(cost.item_key)

func delete_item(item_key : ItemConfig.Keys) -> void:
	if not inventory.has(item_key):
		return
	
	inventory[inventory.rfind(item_key)] = null
