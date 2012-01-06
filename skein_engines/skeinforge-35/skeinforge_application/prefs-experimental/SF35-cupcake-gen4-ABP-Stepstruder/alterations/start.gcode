(**** beginning of start.gcode ****)
(This file is for a MakerBot Cupcake CNC w/ gen4 electronics, ABP, and Stepstruder)
(**** begin initialization commands ****)
G21 (set units to mm)
G90 (set positioning to absolute)
M108 R1.98 (set extruder speed)
M103 (Make sure extruder is off)
M104 S225 T0 (set extruder temperature)
M109 S125 T0 (set heated-build-platform temperature)
(**** end initialization commands ****)
(**** begin homing ****)
G162 Z F100 P100 (home Z axis maximum)
G161 X Y F2500 (home XY axes minimum)
G92 Z83 ( ---=== Set Z axis maximum ===--- )
G92 X-57.5 Y-40 (set zero for X and Y)
(**** end homing ****)
(**** begin pre-wipe commands ****)
G1 X-54 Y-30 Z6 F3300.0 (move to waiting position)
M108 S255 (Extruder speed = max)
M6 T0 (Wait for tool to heat up)
M101 (Extruder on, forward)
G04 P5000 (Wait 5 seconds)
M103 (Extruder off)
(**** end pre-wipe commands ****)
(**** end of start.gcode ****)
