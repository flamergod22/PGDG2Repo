extends Area3D

#this is good door script, for opening + flashback

func _on_body_shape_entered(body_rid: RID, body: Node3D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player"):
		get_node("AnimationPlayer").play("Door_Open")
		get_node("FlashbackPlayer3").play ("flashback3")

func _on_body_shape_exited(body_rid: RID, body: Node3D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player"):
		get_node("AnimationPlayer").play("Door_Closed")
