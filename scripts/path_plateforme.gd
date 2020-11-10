extends Node2D

onready var animation = $Path2D/PathFollow2D/AnimationPlayer

func _ready():
	 animation.play("animation")
