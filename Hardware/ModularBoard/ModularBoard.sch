EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ModularBoard-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "14 aug 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY85-P IC?
U 1 1 520B10CA
P 5900 4150
F 0 "IC?" H 4850 4550 60  0000 C CNN
F 1 "ATTINY85-P" H 6750 3750 60  0000 C CNN
F 2 "DIP8" H 4850 3750 60  0001 C CNN
F 3 "" H 5900 4150 60  0000 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 520B11FD
P 7400 3750
F 0 "#PWR?" H 7400 3840 20  0001 C CNN
F 1 "+5V" H 7400 3840 30  0000 C CNN
F 2 "" H 7400 3750 60  0000 C CNN
F 3 "" H 7400 3750 60  0000 C CNN
	1    7400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3900 7400 3900
Wire Wire Line
	7400 3900 7400 3750
$Comp
L GND #PWR?
U 1 1 520B1251
P 7400 4550
F 0 "#PWR?" H 7400 4550 30  0001 C CNN
F 1 "GND" H 7400 4480 30  0001 C CNN
F 2 "" H 7400 4550 60  0000 C CNN
F 3 "" H 7400 4550 60  0000 C CNN
	1    7400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4550 7400 4400
Wire Wire Line
	7400 4400 7250 4400
$Comp
L USB-MINI-B CON?
U 1 1 520B13E0
P 9500 4350
F 0 "CON?" H 9250 4800 60  0000 C CNN
F 1 "USB-MINI-B" H 9450 3850 60  0000 C CNN
F 2 "" H 9500 4350 60  0000 C CNN
F 3 "" H 9500 4350 60  0000 C CNN
	1    9500 4350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
