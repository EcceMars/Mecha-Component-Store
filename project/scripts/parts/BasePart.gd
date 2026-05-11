class_name BasePart
extends Resource

# ------------------- PLANNING ------------------- #
# All parts are mounted in an armature, which is a skeleton of the mech.
# All parts have a mass class (LIGHT, MEDIUM, HEAVY)
# All parts have two energy modifiers: consumption and storage (negative values will mean they increase such values)
# Weapons will have different types of damage, and pieces will have resistance to them (usually more specialised to one than the other)

## Defines some of the possible parts for this unit's armature
enum A_CLASS {
	BEAST,          ## General, exploration class mech. May use scansorial legs.
	HUMANOID,       ## General, urban class mech.
	VEHICLE         ## General, long distance and siege class mech.
	}
## Importance of this piece to the machine's sytem. A critical part may cause total failure, or even the machine to explode.
enum C_CLASS {
	REDUNDANT,		## Supplementary part that, damaged or destroyed, will only lose its own functionality
	PASSIVE,		## Important part that will hinder the general capabilities of the mech is damaged or destroyed
	CRITICAL		## Critical part that, damaged or destroyed, will either halt the mech immediately or in a short amount of time. When destroyed or critically damaged, some critical parts may even explode
	}
enum P_CLASS {
	ARMATURE,		## Base frame/manipulator that holds the entire mech. Different types may present more slots (number and class), or have greater weight/mass capabilities
	ARMS,			## This will be split in left and right later on (an arm main have a built-in tool and be unable to carry)
	CORE,			## Main body of the mech (torso), it is also the pilot's cockpit
	CPU,			## Hardware and software for the main systems of the machine
	ECELL,			## Energy cell of the mech (usually, affects energy storage). Distinct types may offer greater risk when this part is damaged
	ENGINE,         ## General motor/energy distributor of the unit
	LEGS,			## Affects movement type (articulated [humanoid or scansorial], hovering, acquatic, tracked), capability to dash and overall space movement
	MODULE_RACK,	## Carries different secondary tools (may be split in other part classes): cloacking, auxiliary weapons, droids/drones etc.
	}
## Armatures will generally lock certain weight classes from being used (a light armature won't take a heavy piece, and vice-versa).
enum W_CLASS {
	SOFTWARE,       ## Won't add any weight
	LIGHT,          ## Adds a general weight of 5 to the total system
	MEDIUM,         ## 10 weight
	HEAVY           ## 15 weight
	}

## Composition of the part (usually a more powerful material, tends to be less mobile). This may become its own class later.
enum MATERIAL {
	ALLOY,			## Common metallic shields
	COMPOSITE,		## Layered components
	NANO			## Modular intelligent armor (possesses some recovering capabilities)
	}

## How much damage this part can receive
@export var max_armor:float = 0.0
@export var e_storage:float = 0.0
@export var consumption:float = 0.0

## Part identification
@export var name:StringName = &'_UN'
@export var ID:int = -1
@export var icon:Texture2D = null

## FLAGS (base)
@export var armature_type:A_CLASS = A_CLASS.HUMANOID
@export var atype_restrictions:Array[A_CLASS] = []
@export var importance:C_CLASS = C_CLASS.REDUNDANT
@export var part_type:P_CLASS = P_CLASS.ARMATURE
@export var weight:W_CLASS = W_CLASS.MEDIUM
@export var material:MATERIAL = MATERIAL.ALLOY
