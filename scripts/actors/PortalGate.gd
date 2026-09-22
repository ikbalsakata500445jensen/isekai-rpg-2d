extends Area2D
signal object_interacted(object_name)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		print("[Entity Interaction] Player interacted with ", name)
		emit_signal("object_interacted", name)
