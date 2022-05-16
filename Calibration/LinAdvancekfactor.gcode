; ### Marlin K-Factor Calibration Pattern ###
; -------------------------------------------
;
; Printer: Genius
; Filament: Extrudr PETG
; Created: Fri May 06 2022 11:39:13 GMT+0200 (Mitteleuropäische Sommerzeit)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Nozzle Temperature = 220 °C
; Bed Temperature = 80 °C
; Retraction Distance = 1 mm
; Layer Height = 0.2 mm
; Extruder = 0 
; Fan Speed = 0 %
; Z-axis Offset = -0.1 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 220 mm
; Bed Size Y = 220 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 1800 mm/min
; Fast Printing Speed = 4800 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1500 mm/min
; Unretract Speed = 1500 mm/min
; Printing Acceleration = 500 mm/s^2
; Jerk X-axis =  firmware default
; Jerk Y-axis =  firmware default
; Jerk Z-axis =  firmware default
; Jerk Extruder =  firmware default
;
; Settings Pattern:
; Linear Advance Version = 1.5
; Starting Value Factor = 0
; Ending Value Factor = 0.5
; Factor Stepping = 0.1
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 50 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 108 mm
; Print Size Y = 50 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Bed leveling = M420 L0 S1 ; Load UBL mesh 0
; Use FWRETRACT = false
; Extrusion Multiplier = 1
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 2 s
;
; prepare printing
;
G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
T0 ; Switch to tool 0
M104 S220 ; Set nozzle temperature (no wait)
M190 S80 ; Set bed temperature (wait)
G28 ; Home all axes
G1 Z5 F100 ; Z raise
M109 S220 ; Wait for nozzle temp
M420 S1 ; Load UBL mesh 0; Activate bed leveling compensation
M204 P500 ; Acceleration
G92 E0 ; Reset extruder distance
M106 P0 S0
G1 X110 Y110 F7200 ; move to start
G1 Z0.1 F1800 ; Move to layer height
;
; prime nozzle
;
G1 X56 Y85 F7200 ; move to start
G1 X56 Y135 E4.989 F1800 ; print line
G1 X56.72 Y135 F7200 ; move to start
G1 X56.72 Y85 E4.989 F1800 ; print line
G1 E-1 F1500 ; retract
;
; print anchor frame
;
G1 X66 Y82 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X66 Y113 E1.361 F1800 ; print line
G1 X66.48 Y113 F7200 ; move to start
G1 X66.48 Y82 E1.361 F1800 ; print line
G1 E-1 F1500 ; retract
G1 X156 Y82 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X156 Y113 E1.361 F1800 ; print line
G1 X155.52 Y113 F7200 ; move to start
G1 X155.52 Y82 E1.361 F1800 ; print line
G1 E-1 F1500 ; retract
;
; start the Test pattern
;
G4 P2000 ; Pause (dwell) for 2 seconds
G1 X66 Y85 F7200 ; move to start
M900 K0 ; set K-factor
M117 K0 ; 
G1 E1 F1500 ; un-retract
G1 X86 Y85 E0.7982 F1800 ; print line
G1 X136 Y85 E1.9956 F4800 ; print line
G1 X156 Y85 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
G1 X66 Y90 F7200 ; move to start
M900 K0.1 ; set K-factor
M117 K0.1 ; 
G1 E1 F1500 ; un-retract
G1 X86 Y90 E0.7982 F1800 ; print line
G1 X136 Y90 E1.9956 F4800 ; print line
G1 X156 Y90 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
G1 X66 Y95 F7200 ; move to start
M900 K0.2 ; set K-factor
M117 K0.2 ; 
G1 E1 F1500 ; un-retract
G1 X86 Y95 E0.7982 F1800 ; print line
G1 X136 Y95 E1.9956 F4800 ; print line
G1 X156 Y95 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
G1 X66 Y100 F7200 ; move to start
M900 K0.3 ; set K-factor
M117 K0.3 ; 
G1 E1 F1500 ; un-retract
G1 X86 Y100 E0.7982 F1800 ; print line
G1 X136 Y100 E1.9956 F4800 ; print line
G1 X156 Y100 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
G1 X66 Y105 F7200 ; move to start
M900 K0.4 ; set K-factor
M117 K0.4 ; 
G1 E1 F1500 ; un-retract
G1 X86 Y105 E0.7982 F1800 ; print line
G1 X136 Y105 E1.9956 F4800 ; print line
G1 X156 Y105 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
G1 X66 Y110 F7200 ; move to start
M900 K0.5 ; set K-factor
M117 K0.5 ; 
G1 E1 F1500 ; un-retract
G1 X86 Y110 E0.7982 F1800 ; print line
G1 X136 Y110 E1.9956 F4800 ; print line
G1 X156 Y110 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
;
; Mark the test area for reference
M117 K0
M900 K0 ; Set K-factor 0
G1 X86 Y115 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X86 Y135 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
G1 X136 Y115 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X136 Y135 E0.7982 F1800 ; print line
G1 E-1 F1500 ; retract
G1 Z0.2 F1800 ; zHop
;
; print K-values
;
G1 X158 Y83 F7200 ; move to start
G1 Z0.1 F1800 ; zHop
G1 E1 F1500 ; un-retract
G1 X160 Y83 E0.0798 F1800 ; 0
G1 X160 Y85 E0.0798 F1800 ; 0
G1 X160 Y87 E0.0798 F1800 ; 0
G1 X158 Y87 E0.0798 F1800 ; 0
G1 X158 Y85 E0.0798 F1800 ; 0
G1 X158 Y83 E0.0798 F1800 ; 0
G1 E-1 F1500 ; retract
G1 Z0.2 F1800 ; zHop
G1 X158 Y93 F7200 ; move to start
G1 Z0.1 F1800 ; zHop
G1 E1 F1500 ; un-retract
G1 X160 Y93 E0.0798 F1800 ; 0
G1 X160 Y95 E0.0798 F1800 ; 0
G1 X160 Y97 E0.0798 F1800 ; 0
G1 X158 Y97 E0.0798 F1800 ; 0
G1 X158 Y95 E0.0798 F1800 ; 0
G1 X158 Y93 E0.0798 F1800 ; 0
G1 E-1 F1500 ; retract
G1 X161 Y93 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X161 Y93.4 E0.016 F1800 ; dot
G1 E-1 F1500 ; retract
G1 X162 Y93 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X162 Y95 F7200 ; move to start
G1 X162 Y97 F7200 ; move to start
G1 X164 Y97 E0.0798 F1800 ; 2
G1 X164 Y95 E0.0798 F1800 ; 2
G1 X162 Y95 E0.0798 F1800 ; 2
G1 X162 Y93 E0.0798 F1800 ; 2
G1 X164 Y93 E0.0798 F1800 ; 2
G1 E-1 F1500 ; retract
G1 Z0.2 F1800 ; zHop
G1 X158 Y103 F7200 ; move to start
G1 Z0.1 F1800 ; zHop
G1 E1 F1500 ; un-retract
G1 X160 Y103 E0.0798 F1800 ; 0
G1 X160 Y105 E0.0798 F1800 ; 0
G1 X160 Y107 E0.0798 F1800 ; 0
G1 X158 Y107 E0.0798 F1800 ; 0
G1 X158 Y105 E0.0798 F1800 ; 0
G1 X158 Y103 E0.0798 F1800 ; 0
G1 E-1 F1500 ; retract
G1 X161 Y103 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X161 Y103.4 E0.016 F1800 ; dot
G1 E-1 F1500 ; retract
G1 X162 Y103 F7200 ; move to start
G1 E1 F1500 ; un-retract
G1 X162 Y105 F7200 ; move to start
G1 X162 Y107 F7200 ; move to start
G1 X162 Y105 E0.0798 F1800 ; 4
G1 X164 Y105 E0.0798 F1800 ; 4
G1 X164 Y107 F7200 ; move to start
G1 X164 Y105 E0.0798 F1800 ; 4
G1 X164 Y103 E0.0798 F1800 ; 4
G1 E-1 F1500 ; retract
G1 Z0.2 F1800 ; zHop
;
; FINISH
;
M107 ; Turn off fan
M400 ; Finish moving
M104 S0 ; Turn off hotend
M140 S0 ; Turn off bed
G1 Z30 X220 Y220 F7200 ; Move away from the print
M84 ; Disable motors
M501 ; Load settings from EEPROM
;