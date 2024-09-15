extends Node

const MAX_ENERGY = 100

var current_energy = MAX_ENERGY

func _enter_tree() -> void:
	EventSystem.PLA_change_energy.connect(change_enegry)

func change_enegry(energy_change : float) -> void:
	current_energy += energy_change
	EventSystem.PLA_change_energy.emit(MAX_ENERGY, current_energy)
