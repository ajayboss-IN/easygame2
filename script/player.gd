extends CharacterBody2D


var health = 10
@export var SPEED = 300.0
@export var JUMP_VELOCITY = -350.0
#@export var double_jump = -200
@onready var _playanim = $animation
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var has_double_jump :bool = false

func _ready():
	_playanim.play("idle")

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		has_double_jump= false

	# Handle Jump.
	if Input.is_action_just_pressed("up"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
		elif not has_double_jump:
			#velocity.y = double_jump
			_playanim.play("duoblejumb") #double jump not work
			has_double_jump= true

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	
	#player direction based movement and animation controlled
	if direction == 1:
		_playanim.play("run")
		_playanim.flip_h = false
		velocity.x = direction * SPEED
	elif direction == -1:
		_playanim.play("run")
		_playanim.flip_h = true
		velocity.x = direction * SPEED
	else:
		_playanim.play("idle")
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
	if health <= 0:
		queue_free()
		get_tree().change_scene_to_file("res://eachlevel/ui.tscn")
