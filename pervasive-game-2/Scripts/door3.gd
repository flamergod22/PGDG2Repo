extends Area3D

#this is good door script, for opening + flashback

func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		get_node("AnimationPlayer").play("door_open")
		get_node("cutscene3").play()

func _on_body_exited(body: Node3D) -> void:
	if body.is_in_group("player"):
		get_node("AnimationPlayer").play("door_close")
