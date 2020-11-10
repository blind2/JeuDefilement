extends KinematicBody2D

onready var animation = $PlateformeAnimation
export var string = "static"
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	animation.play(string)
