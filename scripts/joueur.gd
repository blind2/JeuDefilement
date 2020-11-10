extends KinematicBody2D

var velocity = Vector2()
onready var animation = $AnimatedSprite
export var speed = 100
export var gravity = 700
export var impulsion = -500
var conteur =3

onready var vie = $vie
onready var vie1 = $vie2
onready var vie2= $vie3

func _ready():
	pass # Replace with function body.

func _process(delta):
	_physics_process(delta)
	

func _perdreVie():
	if conteur == 3:
		vie.visible = false
		conteur-=1
		return
	if conteur ==2:
		vie1.visible = false
		conteur-=1
		return
	if conteur ==1:
		vie2.visible = false
		get_tree().change_scene("res://scenes/Restart.tscn")

func _physics_process(delta):
	_marcher()
	_jumping()	
	velocity = move_and_slide(velocity,Vector2(0,-1))
	velocity.y += gravity*delta

func _marcher():
	if Input.is_action_pressed("ui_right"):
		animation.play("droite_animation")
		velocity.x += 1
	elif Input.is_action_pressed("ui_left"):
		velocity.x -=1
		animation.play("gauche_animation")
	elif is_on_floor():
		velocity = Vector2(0,0)
		
	

func _jumping():
	if Input.is_action_just_pressed("ui_select") and is_on_floor():
		velocity.y = impulsion
		

