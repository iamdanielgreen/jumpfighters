extends Area2D

var speed: int = 550
var direction: int
var player_index: int

func _process(delta):
	position.x += speed * delta * direction 
	
func _ready():
	if direction == 0.0:
		direction = 1

func _on_body_entered(body):
	if body.is_in_group("TileMap"):
		queue_free()
	if body.is_in_group("Player"):
		if body.name.replace("Player", "") != str(player_index):
			#get_parent().get_node("Camera2D/AnimationPlayer").play("CameraShake") #CameraShake is attached to Camera...
			#...as an animation, rather than as a scripted thing. Scripting this would be better, me thinks.
			#You could use the player_index to assign different types of animations.
			body.decrease_health() #For other projectiles, you'd just tweak the values of this, and call it...
			#... bullet_hit or something like that.
			queue_free() 
