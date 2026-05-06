class_name CorePart
extends BasePart

## Type of cockpit. Cockpits enhance the pilot's performance depending on the atmosphere and other variables.
enum COCKPIT { 
    OPEN,               ## Power armor type of cockpit. It is cheap but not recommended in military or general hazardous ambients.
    CLOSE,              ## Most common type of cockpit. It provides general security to the pilot, but it should not be used in hazardous ambients.
    PRESSURIZED,        ## Flight or low atmosphere recommended cockpit.
    PFCs                ## For low or null atmosphere. Very expensive to mantain.
    }

@export var type:COCKPIT = COCKPIT.PRESSURIZED