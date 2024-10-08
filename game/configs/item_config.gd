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
	Keys.Stone : "res://resources/item_resources/stone_resource.tres",
	Keys.Plant : "res://resources/item_resources/plant_resource.tres",
	Keys.Axe : "res://resources/item_resources/axe_resource.tres",
	Keys.Pickaxe : "res://resources/item_resources/pickaxe_resource.tres",
	Keys.Rope : "res://resources/item_resources/rope_resource.tres",
	Keys.Log : "res://resources/item_resources/log_resource.tres",
	Keys.Mushroom : "res://resources/item_resources/mushroom_resource.tres",
	Keys.Coal : "res://resources/item_resources/coal_resource.tres",
	Keys.Flint : "res://resources/item_resources/flint_resource.tres",
	Keys.RawMeat: "res://resources/item_resources/raw_meat_resource.tres",
	Keys.Tent : "res://resources/item_resources/tent_resource.tres",
	Keys.Campfire : "res://resources/item_resources/campfire_resource.tres"
}

static func get_item_resource(key : Keys) -> ItemResource:
	return load(ITEM_RESOURCE_PATHS.get(key))

const CRAFTING_BLUEPRINT_RESOURCE_PATHS := {
	Keys.Axe : "res://resources/crafting_blueprints/axe_blueprint.tres",
	Keys.Rope : "res://resources/crafting_blueprints/rope_blueprint.tres",
	Keys.Pickaxe : "res://resources/crafting_blueprints/pickaxe_blueprint.tres",
}

static func get_crafting_blueprint(key : Keys) -> CraftingBlueprintResource:
	return load(CRAFTING_BLUEPRINT_RESOURCE_PATHS.get(key))

const EQUIPPABLE_ITEM_PATHS := {
	Keys.Axe : "res://items/equippables/equippable_axe.tscn",
	Keys.Mushroom : "res://items/equippables/equippable_mushroom.tscn",
	Keys.RawMeat : "res://items/equippables/equippable_raw_meat.tscn",
	Keys.Pickaxe : "res://items/equippables/equippable_pickaxe.tscn",
	Keys.Tent : "res://items/equippables/equippable_tent.tscn",
	Keys.Campfire : "res://items/equippables/equippable_campfire.tscn"
}

static func get_equippable_item(key : Keys) -> PackedScene:
	return load(EQUIPPABLE_ITEM_PATHS.get(key))

const PICKUP_ITEM_PATHS := {
	Keys.Log : "res://items/interactables/pickups/rigid_pickup_log.tscn",
	Keys.Coal : "res://items/interactables/pickups/rigid_pickup_coal.tscn",
	Keys.Flint : "res://items/interactables/pickups/rigid_pickup_flint.tscn",
	Keys.RawMeat : "res://items/interactables/pickups/rigid_pickup_raw_meat.tscn",
}

static func get_pickup_item(key : Keys) -> PackedScene:
	return load(PICKUP_ITEM_PATHS.get(key))

const CONSTRUCTABLE_SCENES := {
	Keys.Tent : "res://objects/constructables/constructable_tent.tscn",
	Keys.Campfire : "res://objects/constructables/constructable_campfire.tscn"
}

static func get_constructable_scene(key : Keys) -> PackedScene:
	return load(CONSTRUCTABLE_SCENES.get(key))
