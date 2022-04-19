
# Klicky Probe as Endstop with constant Z-Offset

## Benefits
1. Automatically adjusts to any buildplate material and thickness
2. You only need to calibrate one variable: Nozzle-to-switch offset distance, instead of Z-endstop pin and switch body and nozzle
3. Easy to set up

## Drawbacks
1. Your Z-offset will change when you swap nozzles (unless you swap in a nozzle with identical height to the old one). This is the only time **you have to recalibrate your Z-offset!** (here is a nozzle length Database we´ve made: https://nozzles.takuya.tech/)
2. No automatic Z-offset possible.

## How to set it up

### Important notes:
If you are currently using Auto-z (z_calibrate), you need to disable it. 

### In klicky-variables.cfg
1. Replace the following lines:  
  ```python
  variable_z_endstop_x: 1000
  variable_z_endstop_y: 1000
  ```  
  with  
  ```python
  variable_z_endstop_x: 0
  variable_z_endstop_y: 0
  ```  
  **Why change variable_z_endstop_ to 0 on both axes?**  
  ```bash
  # if a separate Z endstop switch is in use, 
  # specify the coordinates of the switch here (Voron). 
  # Set to 0 to have the probe move to center of bed
  ```
2. Open your printer.cfg
3. Comment out or replace in `[stepper_z]`  
  ```python
  endstop_pin:  
  ```
  with  
  ```python
  endstop_pin: probe:z_virtual_endstop
  ```
4. Comment out `position_endstop`
5. Set your probe offsets in `[probe]` section  
  ```python
  x_offset: 0
  y_offset: 19.75
  z_offset: 6.42
  ```
6. Calibrate your z-offset the old fashioned paper way. Make sure to `SAVE TO PROBE` and not `SAVE TO ENDSTOP`!
  ### Note
   If your ```[probe]``` section is included in the printer.cfg from another file, ```SAVE_CONFIG``` will not work and you will need to update the <br>
   ```[probe] z_offset```     manually!
   <br>
   <br>
7. Enjoy :)

## Important Notes & Tips

Always test your freshly-set-up Z-offset on the outer edges of your print surface. If anything goes wrong, you will only scratch the edge and not the middle.

### What if I swap my nozzle?

- If your new nozzle is longer than your old one, you need to *decrease* your `[probe] z_offset`.
- If your new nozzle is shorter than your old one, you need to *increase* your `[probe] z_offset`.
- If the new nozzle and old nozzle are the same exact length and you have hot-tightened the new nozzle securely against the heatbreak, you can reuse the current value. No changes are needed in this case.
