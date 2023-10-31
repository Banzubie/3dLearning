extends CharacterBody3D

@export var min_speed = 10
@export var max_speed = 18

func _physics_process(delta):
	move_and_slide()
	
func initialize(start_pos, player_pos):
	look_at_from_position(start_pos, player_pos, Vector3.UP)
	rotate_y(randf_range(-PI / 4, PI / 4))
	
	var random_speed = randi_range(min_speed, max_speed)
	velocity = Vector3.FORWARD * random_speed
	velocity = velocity.rotated(Vector3.UP, rotation.y)

