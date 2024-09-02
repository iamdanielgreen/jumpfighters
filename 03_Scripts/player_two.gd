extends CharacterBody2D

@onready var p2_sprite = $AnimatedSprite2D

@export var projectile: PackedScene 
@export var death_sparkles: PackedScene
@export var player_index: int

const SPEED = 130.0 #Default was 300.0
const JUMP_VELOCITY = -300 #Default was -400.

var can_shoot: bool = true 
var health: float = 100

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready() -> void:
	pass
	#reset_player()

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("p2_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("p2_left", "p2_right")
	

	if direction > 0.0: #You changed this from Brackeys to be 0.0, because it's a float now.
		p2_sprite.flip_h = false
	elif direction < 0.0:
		p2_sprite.flip_h = true
		
	if Input.is_action_just_pressed("p2_shoot"): 
		shoot_projectile()
	
	#Play animations
	if is_on_floor():
		if direction == 0.0: #You changed this from Brackeys to be 0.0, because it's a float now.
			p2_sprite.play("idle")
		else:
			p2_sprite.play("run")
	else:
		p2_sprite.play("jump")
	
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func decrease_health() -> void:
	health -= 100.0 / 5.0
	
	if health <= 0: 
		var death_sparkles_instance: CPUParticles2D = death_sparkles.instantiate()
		get_parent().add_child(death_sparkles_instance)
		death_sparkles_instance.emitting = true
		death_sparkles_instance.position = position
		get_parent().get_node("Camera2D").apply_shake()
		#TODO: Wait a small amount of time, then reset.
		reset_player() 
		health = 100
		get_parent().scored(int(player_index)) #By default, player_index should return an integer...
		#... Putting the int in before the player_index just makes sure it is. 
		
	get_health_bar().value = health
		
func get_health_bar() -> ProgressBar: #Decrease of Health Bar is reflected in player's Progress Bar
	return get_parent().get_node("UI/Player2/HealthProgressBar")
	
#Creates projectile, forces player to wait before firing again
func shoot_projectile() -> void:
	if can_shoot:
		var projectile_instance: Area2D = projectile.instantiate()
		projectile_instance.player_index = player_index #Which player owns which projectile? -
		get_parent().add_child(projectile_instance)
		projectile_instance.position = position #Puts the projectile where the player is.
		#Using this method, projectile always fires where the player is facing. But is dependent on flip_h
		if p2_sprite.flip_h == true:
			projectile_instance.direction = -1 
		else:
			projectile_instance.direction = 1
			
	can_shoot = false
		
func reset_player() -> void:
	var spawn_points: Node = get_parent().get_node("SpawnPoints")
	position = spawn_points.get_child(1).position
	
#In theory, this thing only works in this circumstance if the player is the Gunfighter. You'd need to change this...
#... if they were a different character.
func _on_projectile_time_timeout() -> void:
	can_shoot = true  
