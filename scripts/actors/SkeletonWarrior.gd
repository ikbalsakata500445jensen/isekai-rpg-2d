extends CharacterBody2D
# Skeleton Warrior Enemy AI
@export var max_hp: float = 100.0
var current_hp: float

func _ready() -> void:
	current_hp = max_hp

func take_damage(amount: float) -> void:
	current_hp -= amount
	if current_hp <= 0:
		queue_free()
