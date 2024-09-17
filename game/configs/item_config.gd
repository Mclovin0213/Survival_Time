class_name ItemConfig

enum Keys {
	#Pickups
	Stick,
	Stone,
	Plant,
	Mushroom,
	Fruit,
	Log,
	Coal,
	Flint,
	RawMeat,
	CookedMeat,
	
	#Craftables
	Axe,
	Pickaxe,
	Campfire,
	Multitool,
	Rope,
	Tinderbox,
	Torch,
	Tent,
	Raft
}

const CRAFTABLE_ITEM_KEYS : Array[Keys] = [
	Keys.Axe,
	#Keys.Pickaxe,
	#Keys.Campfire,
	#Keys.Multitool,
	Keys.Rope,
	#Keys.Tinderbox,
	#Keys.Torch,
	#Keys.Tent,
	#Keys.Raft
]

const ITEM_RESOURCE_PATHS := {
	Keys.Stick : "res://resources/item_resources/stick_resource.tres",
	Keys.Stone: "res://resources/item_resources/stone_resource.tres",
	Keys.Plant: "res://resources/item_resources/plant_resource.tres",
	Keys.Axe: "res://resources/item_resources/axe_resource.tres",
	Keys.Rope: "res://resources/item_resources/rope_resource.tres",
	Keys.Log: "res://resources/item_resources/log_resource.tres",
	Keys.Mushroom: "res://resources/item_resources/mushroom_resource.tres"

}

static func get_item_resource(key : Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(key))

const CRAFTING_BLUEPRINT_RESOURCE_PATHS := {
	Keys.Axe : "res://resources/crafting_blueprints/axe_blueprint.tres",
	Keys.Rope : "res://resources/crafting_blueprints/rope_blueprint.tres"
}

static func get_crafting_blueprint(key : Keys) -> CraftingBlueprintResource:
	return load(CRAFTING_BLUEPRINT_RESOURCE_PATHS.get(key))

const EQUIPPABLE_ITEM_PATHS := {
	Keys.Axe : "res://items/equippables/equippable_axe.tscn",
	Keys.Mushroom : "res://items/equippables/equippable_mushroom.tscn"
}

static func get_equippable_item(key : Keys) -> PackedScene:
	return load(EQUIPPABLE_ITEM_PATHS.get(key))

const PICKUP_ITEM_PATHS := {
	Keys.Log : "res://items/interactables/rigid_pickup_log.tscn"
}

static func get_pickup_item(key : Keys) -> PackedScene:
	return load(PICKUP_ITEM_PATHS.get(key))
