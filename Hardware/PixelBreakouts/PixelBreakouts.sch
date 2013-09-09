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
LIBS:guan
LIBS:hackrf
LIBS:PixelBreakouts-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "8 sep 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WS2811-5050 IC1
U 1 1 522CF8F4
P 5550 3450
F 0 "IC1" H 5550 3250 60  0000 C CNN
F 1 "WS2811-5050" H 5550 3650 60  0000 C CNN
F 2 "~" H 5550 3450 60  0000 C CNN
F 3 "~" H 5550 3450 60  0000 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K1
U 1 1 522CFB92
P 5400 2950
F 0 "K1" V 5350 2950 50  0000 C CNN
F 1 "CONN_3" V 5450 2950 40  0000 C CNN
F 2 "" H 5400 2950 60  0000 C CNN
F 3 "" H 5400 2950 60  0000 C CNN
	1    5400 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K2
U 1 1 522CFBA3
P 5700 2950
F 0 "K2" V 5650 2950 50  0000 C CNN
F 1 "CONN_3" V 5750 2950 40  0000 C CNN
F 2 "" H 5700 2950 60  0000 C CNN
F 3 "" H 5700 2950 60  0000 C CNN
	1    5700 2950
	-1   0    0    -1  
$EndComp
Text Label 5950 3450 0    60   ~ 0
DI
Text Label 5950 3550 0    60   ~ 0
DO
Text Label 6050 2950 0    60   ~ 0
DI
Wire Wire Line
	5050 2950 4950 2950
Text Label 4950 2950 0    60   ~ 0
DO
Wire Wire Line
	6050 2950 6150 2950
Wire Wire Line
	5950 3450 6050 3450
Wire Wire Line
	5950 3550 6050 3550
Wire Wire Line
	5950 3350 6050 3350
Text Label 5950 3350 0    60   ~ 0
VCC
Wire Wire Line
	5150 3450 5050 3450
Text Label 5050 3450 0    60   ~ 0
VDD
$Comp
L GND #PWR01
U 1 1 522CFE35
P 5050 3600
F 0 "#PWR01" H 5050 3600 30  0001 C CNN
F 1 "GND" H 5050 3530 30  0001 C CNN
F 2 "" H 5050 3600 60  0000 C CNN
F 3 "" H 5050 3600 60  0000 C CNN
	1    5050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3600 5050 3550
Wire Wire Line
	5050 3550 5150 3550
$Comp
L GND #PWR02
U 1 1 522CFEA9
P 6150 3100
F 0 "#PWR02" H 6150 3100 30  0001 C CNN
F 1 "GND" H 6150 3030 30  0001 C CNN
F 2 "" H 6150 3100 60  0000 C CNN
F 3 "" H 6150 3100 60  0000 C CNN
	1    6150 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 522CFEB8
P 4950 3100
F 0 "#PWR03" H 4950 3100 30  0001 C CNN
F 1 "GND" H 4950 3030 30  0001 C CNN
F 2 "" H 4950 3100 60  0000 C CNN
F 3 "" H 4950 3100 60  0000 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3100 4950 3050
Wire Wire Line
	4950 3050 5050 3050
Wire Wire Line
	6050 3050 6150 3050
Wire Wire Line
	6150 3050 6150 3100
Wire Wire Line
	6050 2850 6150 2850
Wire Wire Line
	5050 2850 4950 2850
Text Label 6050 2850 0    60   ~ 0
VCC
Text Label 4950 2850 0    60   ~ 0
VDD
Wire Wire Line
	5350 3850 5750 3850
Text Label 5350 3850 0    60   ~ 0
VCC
Text Label 5600 3850 0    60   ~ 0
VDD
$EndSCHEMATC
