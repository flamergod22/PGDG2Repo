extends Area3D

#this is dud door script - for close + sound

func _on_body_shape_entered(body_rid: RID, body: Node3D, body_shape_index: int, local_shape_index: int) -> void:
	if body.is_in_group("player"):
		$DudDoorNoise.play()
