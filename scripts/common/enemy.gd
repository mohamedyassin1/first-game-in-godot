extends Node2D

@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
@onready var animated_sprite_2d = $AnimatedSprite2D

const SPEED = 60;
var direction = 1;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += direction * SPEED * delta
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
		
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	
