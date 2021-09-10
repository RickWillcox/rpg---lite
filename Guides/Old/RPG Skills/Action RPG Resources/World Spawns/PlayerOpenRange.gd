extends Area2D



var player_in_range_of_chest = false
var chest_open = false

func _physics_process(delta):
	if Input.is_action_just_pressed("open_chest"):
		if player_in_range_of_chest and !chest_open:
			$"../AnimationPlayer".play("Open")
			chest_open = true
		else:
			$"../AnimationPlayer".play("Close")
			chest_open = false
	
func _on_PlayerOpenRange_body_entered(body: Node) -> void:
	player_in_range_of_chest = true
	
func _on_PlayerOpenRange_body_exited(body: Node) -> void:
	player_in_range_of_chest = false
	
