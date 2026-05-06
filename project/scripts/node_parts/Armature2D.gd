## Frame node component for any mech. This is the actual anchor of any mech.
@icon("res://editor/icons/Skeleton2D.svg")      # TASK: find where Godot stores the built-in icons
class_name Armature2D
extends PartNode

@export var core:Core2D
@export var b_arm:Arm2D
@export var f_arm:Arm2D
@export var b_leg:Leg2D
@export var f_leg:Leg2D