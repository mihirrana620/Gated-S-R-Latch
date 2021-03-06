EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:Mihir_SR_Latch-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mihir_sr_latch U5
U 1 1 6221BBF4
P 2650 5000
F 0 "U5" H 5500 6800 60  0000 C CNN
F 1 "mihir_sr_latch" H 5500 7000 60  0000 C CNN
F 2 "" H 5500 6950 60  0000 C CNN
F 3 "" H 5500 6950 60  0000 C CNN
	1    2650 5000
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_3 U4
U 1 1 6221BCD0
P 4250 3150
F 0 "U4" H 4250 3150 60  0000 C CNN
F 1 "adc_bridge_3" H 4250 3300 60  0000 C CNN
F 2 "" H 4250 3150 60  0000 C CNN
F 3 "" H 4250 3150 60  0000 C CNN
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_2 U6
U 1 1 6221BD91
P 6650 3150
F 0 "U6" H 6650 3150 60  0000 C CNN
F 1 "dac_bridge_2" H 6700 3300 60  0000 C CNN
F 2 "" H 6650 3150 60  0000 C CNN
F 3 "" H 6650 3150 60  0000 C CNN
	1    6650 3150
	1    0    0    -1  
$EndComp
$Comp
L capacitor C2
U 1 1 6221BECF
P 8300 3450
F 0 "C2" H 8325 3550 50  0000 L CNN
F 1 "1u" H 8325 3350 50  0000 L CNN
F 2 "" H 8338 3300 30  0000 C CNN
F 3 "" H 8300 3450 60  0000 C CNN
	1    8300 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 6221E3F5
P 8300 3700
F 0 "#PWR?" H 8300 3450 50  0001 C CNN
F 1 "GND" H 8300 3550 50  0000 C CNN
F 2 "" H 8300 3700 50  0001 C CNN
F 3 "" H 8300 3700 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 6221E496
P 2400 4150
F 0 "v1" H 2200 4250 60  0000 C CNN
F 1 "pulse" H 2200 4100 60  0000 C CNN
F 2 "R1" H 2100 4150 60  0000 C CNN
F 3 "" H 2400 4150 60  0000 C CNN
	1    2400 4150
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 6221E50F
P 2950 4150
F 0 "v2" H 2750 4250 60  0000 C CNN
F 1 "pulse" H 2750 4100 60  0000 C CNN
F 2 "R1" H 2650 4150 60  0000 C CNN
F 3 "" H 2950 4150 60  0000 C CNN
	1    2950 4150
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 6221E58E
P 3500 4200
F 0 "v3" H 3300 4300 60  0000 C CNN
F 1 "pulse" H 3300 4150 60  0000 C CNN
F 2 "R1" H 3200 4200 60  0000 C CNN
F 3 "" H 3500 4200 60  0000 C CNN
	1    3500 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 6221EA77
P 2400 4650
F 0 "#PWR?" H 2400 4400 50  0001 C CNN
F 1 "GND" H 2400 4500 50  0000 C CNN
F 2 "" H 2400 4650 50  0001 C CNN
F 3 "" H 2400 4650 50  0001 C CNN
	1    2400 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 6221EB62
P 2950 4650
F 0 "#PWR?" H 2950 4400 50  0001 C CNN
F 1 "GND" H 2950 4500 50  0000 C CNN
F 2 "" H 2950 4650 50  0001 C CNN
F 3 "" H 2950 4650 50  0001 C CNN
	1    2950 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 6221EB9F
P 3500 4650
F 0 "#PWR?" H 3500 4400 50  0001 C CNN
F 1 "GND" H 3500 4500 50  0000 C CNN
F 2 "" H 3500 4650 50  0001 C CNN
F 3 "" H 3500 4650 50  0001 C CNN
	1    3500 4650
	1    0    0    -1  
$EndComp
$Comp
L capacitor C1
U 1 1 6221FB14
P 7900 3450
F 0 "C1" H 7925 3550 50  0000 L CNN
F 1 "1u" H 7925 3350 50  0000 L CNN
F 2 "" H 7938 3300 30  0000 C CNN
F 3 "" H 7900 3450 60  0000 C CNN
	1    7900 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 6221FD07
P 7900 3850
F 0 "#PWR?" H 7900 3600 50  0001 C CNN
F 1 "GND" H 7900 3700 50  0000 C CNN
F 2 "" H 7900 3850 50  0001 C CNN
F 3 "" H 7900 3850 50  0001 C CNN
	1    7900 3850
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U8
U 1 1 6221FF54
P 7750 3100
F 0 "U8" H 7750 3600 60  0000 C CNN
F 1 "plot_v1" H 7950 3450 60  0000 C CNN
F 2 "" H 7750 3100 60  0000 C CNN
F 3 "" H 7750 3100 60  0000 C CNN
	1    7750 3100
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U7
U 1 1 6221FFB5
P 7350 3100
F 0 "U7" H 7350 3600 60  0000 C CNN
F 1 "plot_v1" H 7550 3450 60  0000 C CNN
F 2 "" H 7350 3100 60  0000 C CNN
F 3 "" H 7350 3100 60  0000 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
Text GLabel 8700 3100 2    60   Output ~ 0
Q_out
Text GLabel 8750 3750 2    60   Output ~ 0
Qn_out
$Comp
L plot_v1 U1
U 1 1 622205CA
P 2500 2750
F 0 "U1" H 2500 3250 60  0000 C CNN
F 1 "plot_v1" H 2700 3100 60  0000 C CNN
F 2 "" H 2500 2750 60  0000 C CNN
F 3 "" H 2500 2750 60  0000 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U2
U 1 1 62220613
P 3050 2700
F 0 "U2" H 3050 3200 60  0000 C CNN
F 1 "plot_v1" H 3250 3050 60  0000 C CNN
F 2 "" H 3050 2700 60  0000 C CNN
F 3 "" H 3050 2700 60  0000 C CNN
	1    3050 2700
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U3
U 1 1 622206D0
P 3650 2600
F 0 "U3" H 3650 3100 60  0000 C CNN
F 1 "plot_v1" H 3850 2950 60  0000 C CNN
F 2 "" H 3650 2600 60  0000 C CNN
F 3 "" H 3650 2600 60  0000 C CNN
	1    3650 2600
	1    0    0    -1  
$EndComp
Text GLabel 1950 3150 0    60   Input ~ 0
CLK
Text GLabel 2800 3200 0    60   Input ~ 0
S
Text GLabel 3250 3350 0    60   Input ~ 0
R
Wire Wire Line
	7200 3100 8700 3100
Wire Wire Line
	8300 3100 8300 3300
Wire Wire Line
	8300 3600 8300 3700
Wire Wire Line
	2400 3700 2400 3100
Wire Wire Line
	2950 3700 2950 3200
Wire Wire Line
	2800 3200 3650 3200
Wire Wire Line
	3500 3750 3500 3300
Wire Wire Line
	3500 3300 3650 3300
Wire Wire Line
	2400 4600 2400 4650
Wire Wire Line
	2950 4600 2950 4650
Wire Wire Line
	2400 3100 3650 3100
Wire Wire Line
	7200 3200 8100 3200
Wire Wire Line
	7900 3200 7900 3300
Wire Wire Line
	7750 2900 7750 3100
Connection ~ 7750 3100
Wire Wire Line
	7350 2900 7350 3200
Connection ~ 7350 3200
Connection ~ 8300 3100
Wire Wire Line
	8750 3750 8500 3750
Wire Wire Line
	8500 3750 8500 4100
Wire Wire Line
	8500 4100 8100 4100
Wire Wire Line
	8100 4100 8100 3200
Connection ~ 7900 3200
Wire Wire Line
	7900 3600 7900 3850
Wire Wire Line
	2500 2550 2500 3100
Connection ~ 2500 3100
Wire Wire Line
	3050 2500 3050 3200
Connection ~ 3050 3200
Wire Wire Line
	3650 3300 3650 2400
Wire Wire Line
	1950 3150 2400 3150
Connection ~ 2400 3150
Connection ~ 2950 3200
Wire Wire Line
	3250 3350 3500 3350
Connection ~ 3500 3350
$EndSCHEMATC
