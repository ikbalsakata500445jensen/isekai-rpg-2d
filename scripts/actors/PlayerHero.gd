extends CharacterBody2D

@export var speed: float = 160.0
@export var dash_speed: float = 350.0
var is_attacking: bool = false

@onready var anim: AnimationPlayer = $AnimationPlayer if has_node("AnimationPlayer") else null

func _physics_process(delta: float) -> void:
	if is_attacking:
		velocity = Vector2.ZERO
		move_and_slide()
		return

	var dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = dir * speed
	move_and_slide()

	if Input.is_action_just_pressed("ui_accept") and not is_attacking:
		attack()
	else:
		if anim:
			if velocity.length() > 10.0:
				anim.play("walk")
			else:
				anim.play("idle")

func attack() -> void:
	is_attacking = true
	if anim and anim.has_animation("attack_slash"):
		anim.play("attack_slash")
		await anim.animation_finished
	is_attacking = false
