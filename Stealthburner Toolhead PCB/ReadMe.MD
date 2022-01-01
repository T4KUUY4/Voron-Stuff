# WARNING: UNTESTED YET, Should work but do so at your own risk
<br>

# UNRELEASED YET

# Stealthburner Toolhead PCB with added Features ;)

Well like the above said, this is my Toolhead PCB for the new Stealthburner. 
It is fully compatible with CW1 and later on CW2 + LGX.
Also compatible with Stealthburner or Afterburner.
Let´s go over the Features:

## Features: 

1. 14pin + 4 pin Molex Microfit 3.0
2. Fully customizable WS2812B status LED (configurable with Klipper to your printer status for example) (Only when 5V + Signal is supplied via the Molex 4 pin )
3. Full support for Stealthburner LEDS (Only when 5V + Signal is supplied via the Molex 4 pin )
4. Probe port for Klicky or inductive probes (Instructions below)
5. Hotend Fan + Part cooling fan port
6. Heater cartridge Molex Microfit 3.0  2 pin + thermistor port (JST-XH)

# Installation

## Preperation
1. Crimp your 14 and 4 Pin Molex Microfit cables according to the diagram below:
   Diagram coming soon...
2. Plug the cables into the right ports on your board. As there are many boards available I cannot cover them here. Have a look on the pinout of your specific board to find the needed pins and locations
3. Route all 18 Cables through your cablechain
4. Move on to your extruder setup below ↓↓

## CW1
1. Print and install the new "Main Body" + "Motor Plate" from the STL´s folder + spacer
2. Insert two heated inserts
3. Screw Assembled PCB onto CW1 with spacer inbetween
4. Plug the crimped 14Pin + 4pin Molex Microfit 3.0 Cable into the PCB
5. Profit!

## CW2 (coming soon...)

## LGX (coming soon...)

# Probe Port

The Probe port can be used for Klicky or an inductive probe.
Follow the instructions for your probe below

## Klicky
1. Bridge the gap on the bottom right pads with solder to route the signal cable directly without using the bat85 (NEEDS TO BE REMOVED!!!)
2. Crimp the 2 cables from your klicky with JST-XH crimps and plug them into the left (GND) and the middle pin (SIGNAL) of a male 3 pin JST-XH Cable
3. Plug in the connector and configure your PROBE PIN, which you have chosen earlier while wiring up the cables, in your config. 
4. DONE!

## Inductive
1. Insert and solder BAT85 Diode
2. Remove solder bridge of bottom right pads if they are bridged.
3. Crimp the 3 cables of your probe with JST-XH Crimps (According to your probes wire colors) and plug them in the correct order into your male 3 pin JST-XH (LEFT = GND | MIDDLE = SIGNAL | RIGHT = 24V)
4. Plug the cable into the PCB
5. DONE!
