
# Stop Flexin Extruder

## Disclaimer
WORK IN PROGRESS. Files may and will change!

## What is this and what is it for?
"Stop flexin" is a flexible Extruder System utilizing the EZR Extruder by SeeMeCNC. I designed this thing because flexible Filaments hate me and my extruders. 

It is made for all sorts of flexible Filaments. Mostly 60/70/80A TPU which deform like overcooked spaghetti and clog up every extruder in no time. 
Ive personally tested 70A TPU in combination with a PTFE V6 (See Additional Info) and it printed just fine at 240C with 25mm/s. 


## BOM
 * Little bit of ABS
 * 4x  Voron style heatset insert
 * 2x M3x40 BHCS or SHCS
 * 2x M3x20
 * 2x M3x18
 * SeeMeCNC EZR Extruder
 * 0.8 Nozzle (Optional but highly recommended)
 * Pancake stepper

## Installation
1. Print all the required parts
2. Remove the silver knob off the EZR
3. Insert heatset inserts into main body and retainer parts. 
![](./images/1.png)
4. Use the M3x20 screws in combination with the retainer parts to secure the EZR Extruder to the main body (Slot). Leave slightly loose for now.
5. Install the main body on your carriage with the 2 M3x18 screws.
6. Mount your toolhead, and adjust the EZR position by sliding left to right. Tighten down when you are done. 
7. Add your Fan Assembly (StealthBurner or AfterBurner)
8. Profit!
    
## Additional Info/Configuration
* The EZR uses a 1:1 gear ratio. Adjust correctly in your printer.cfg
* You need to recalibrate E-steps
* Print slow! (20-40mm/s max)  You are dealing with well cooked spaghetti...
* As hard as it sounds, get a cheap V6 PTFE clone. Flexibles dont like All Metal Hotends. Due to thermal expansion, it sticks to the hot metal thus clogging. 
 
## Questions? 
Tag me on Discord: Takuya#0523
