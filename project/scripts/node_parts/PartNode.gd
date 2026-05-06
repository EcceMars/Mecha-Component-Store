class_name PartNode
extends Node2D

## Current damage condition
enum INTEGRITY {
    OPERATIONAL,    ## Good condition
    DAMAGED,        ## In a damaged state (usually when armor is down to 0.25 of capability). The CPU may receive a temporary DAMAGED or LOST condition
    LOST            ## Part lost
    }

@export var model:BasePart
@export var dmg_layer:CollisionPolygon2D

var armor:float = 0.0
var integrity:INTEGRITY = INTEGRITY.OPERATIONAL