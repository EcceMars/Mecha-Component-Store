class_name BasePart
extends Resource

# ------------------- PLANNING ------------------- #
# All parts are mounted in an armature, which is a skeleton of the mech.
# All parts have a mass class (LIGHT, MEDIUM, HEAVY)
# All parts have two energy modifiers: consumption and storage (negative values will mean they increase such values)

enum W_CLASS {  LIGHT, MEDIUM, HEAVY }

## Part ID
var ID:int = -1
var weigth:W_CLASS = W_CLASS.MEDIUM