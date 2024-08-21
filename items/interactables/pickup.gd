extends Interactable
class_name Pick

@export var item_key : ItemConfig.Keys

@onready var parent : Node3D = get_parent()

func start_interaction() -> void:
	parent.queue_free()
