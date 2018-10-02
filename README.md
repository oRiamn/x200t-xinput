# x200t-xinput

This project can be used to manage Thinkpad Tablet Series inputs.

# First Step

Edit `.env` file for list manageable devices :

```
ALIAS:'fullname of device'
```
You may need to get the name of device which can be found by running *xinput list* command

```BASH
$ xinput -list
⎡ Virtual core pointer                    	id=2	[master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer              	id=4	[slave  pointer  (2)]
⎜   ↳ Logitech K400                           	id=10	[slave  pointer  (2)]
⎜   ↳ Logitech MX Anywhere 2                  	id=11	[slave  pointer  (2)]
⎜   ↳ TPPS/2 IBM TrackPoint                   	id=13	[slave  pointer  (2)]
⎜   ↳ Wacom Serial Penabled 2FG Touchscreen Pen eraser	id=19	[slave  pointer  (2)]
⎜   ↳ Wacom Serial Penabled 2FG Touchscreen Pen stylus	id=15	[slave  pointer  (2)]
⎜   ↳ Wacom Serial Penabled 2FG Touchscreen Finger touch	id=16	[slave  pointer  (2)]
⎣ Virtual core keyboard                   	id=3	[master keyboard (2)]
    ↳ Virtual core XTEST keyboard             	id=5	[slave  keyboard (3)]
    ↳ Power Button                            	id=6	[slave  keyboard (3)]
    ↳ Video Bus                               	id=7	[slave  keyboard (3)]
    ↳ Sleep Button                            	id=8	[slave  keyboard (3)]
    ↳ UVC Camera (17ef:480c)                  	id=9	[slave  keyboard (3)]
    ↳ AT Translated Set 2 keyboard            	id=12	[slave  keyboard (3)]
    ↳ ThinkPad Extra Buttons                  	id=14	[slave  keyboard (3)]
    ↳ Logitech K400                           	id=17	[slave  keyboard (3)]
    ↳ Logitech MX Anywhere 2                  	id=18	[slave  keyboard (3)]
```

I need to manage *Wacom Serial Penabled 2FG Touchscreen* devices, my `.env` looks like :

```
FINGER:'Wacom Serial Penabled 2FG Touchscreen Finger touch'
ERASER:'Wacom Serial Penabled 2FG Touchscreen Pen eraser'
STYLUS:'Wacom Serial Penabled 2FG Touchscreen Pen stylus'
```

# Usage 

Type `./run.sh <command> <alias>`

For exemple :

```BASH
./run.sh toggle FINGER
Wacom Serial Penabled 2FG Touchscreen Finger touch is now enable
```