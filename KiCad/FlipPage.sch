EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Pédale bluetooth home made version"
Date "2020-11-03"
Rev ""
Comp "BAHIN Mathieu"
Comment1 "https://github.com/MathieuBahin/FlipPage"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5F9722AD
P 3450 3400
F 0 "A1" H 3450 2311 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3450 2220 50  0000 C CNN
F 2 "perso:Arduino_Nano_step" H 3450 3400 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3450 3400 50  0001 C CNN
	1    3450 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3900 2550 3900
Wire Wire Line
	2550 3900 2550 1550
Wire Wire Line
	2550 1550 6000 1550
Wire Wire Line
	6000 1550 6000 3550
Wire Wire Line
	2950 4000 2450 4000
Wire Wire Line
	2450 4000 2450 1450
Wire Wire Line
	2450 1450 6100 1450
Wire Wire Line
	6100 1450 6100 3550
Wire Wire Line
	2950 4100 2350 4100
Wire Wire Line
	2350 4100 2350 1350
Wire Wire Line
	2350 1350 6200 1350
Wire Wire Line
	6200 1350 6200 3550
Wire Wire Line
	3550 4400 5000 4400
Wire Wire Line
	5000 4400 5000 3150
Wire Wire Line
	5000 3150 5500 3150
Wire Wire Line
	5500 3150 5500 3550
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5FA1C9BF
P 1850 4750
F 0 "J1" H 1958 4931 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1958 4840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1850 4750 50  0001 C CNN
F 3 "~" H 1850 4750 50  0001 C CNN
	1    1850 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5FA1D680
P 1850 5150
F 0 "J2" H 1958 5331 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1958 5240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1850 5150 50  0001 C CNN
F 3 "~" H 1850 5150 50  0001 C CNN
	1    1850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3300 2750 3300
Wire Wire Line
	2750 3300 2750 4750
Wire Wire Line
	2750 4750 2050 4750
Wire Wire Line
	2950 3400 2850 3400
Wire Wire Line
	2850 3400 2850 5150
Wire Wire Line
	2850 5150 2050 5150
Wire Wire Line
	3450 4400 3550 4400
Connection ~ 3550 4400
Wire Wire Line
	3650 2400 5400 2400
Wire Wire Line
	5400 2400 5400 3550
NoConn ~ 5700 3550
Wire Wire Line
	2950 3800 2650 3800
Wire Wire Line
	2650 3800 2650 2050
Wire Wire Line
	2650 2050 5900 2050
Wire Wire Line
	5900 2050 5900 3550
Wire Wire Line
	5800 3550 5800 2250
Wire Wire Line
	5800 2250 2750 2250
Wire Wire Line
	2750 2250 2750 3000
Wire Wire Line
	2750 3000 2950 3000
NoConn ~ 5600 3550
$Comp
L Connector:USB_B_Mini J3
U 1 1 5FA241C7
P 1650 3050
F 0 "J3" H 1707 3517 50  0000 C CNN
F 1 "USB_B_Mini" H 1707 3426 50  0000 C CNN
F 2 "perso:USB_Mini-B_Lumberg_2486_01_Horizontal" H 1800 3000 50  0001 C CNN
F 3 "~" H 1800 3000 50  0001 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
NoConn ~ 1950 3050
NoConn ~ 1950 3150
NoConn ~ 1950 3250
NoConn ~ 1550 3450
Wire Wire Line
	1650 3450 1650 4400
Wire Wire Line
	1650 4400 2350 4400
Connection ~ 3450 4400
Wire Wire Line
	3350 2400 1950 2400
Wire Wire Line
	1950 2400 1950 2850
Wire Wire Line
	2350 4400 2350 4850
Wire Wire Line
	2350 4850 2050 4850
Connection ~ 2350 4400
Wire Wire Line
	2350 4400 3450 4400
Wire Wire Line
	2350 4850 2350 5250
Wire Wire Line
	2350 5250 2050 5250
Connection ~ 2350 4850
$Comp
L perso:Bluefruit_SPI_Bluetooth U1
U 1 1 5FBBD8D6
P 5700 4350
F 0 "U1" H 6478 4754 50  0000 L CNN
F 1 "Bluefruit_SPI_Bluetooth" H 6478 4663 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 5700 4350 50  0001 C CNN
F 3 "" H 5700 4350 50  0001 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
NoConn ~ 2950 2800
NoConn ~ 2950 2900
NoConn ~ 2950 3100
NoConn ~ 2950 3200
NoConn ~ 2950 3500
NoConn ~ 2950 3600
NoConn ~ 2950 3700
NoConn ~ 3950 2800
NoConn ~ 3950 2900
NoConn ~ 3950 3200
NoConn ~ 3950 3400
NoConn ~ 3950 3500
NoConn ~ 3950 3600
NoConn ~ 3950 3700
NoConn ~ 3950 3800
NoConn ~ 3950 3900
NoConn ~ 3950 4000
NoConn ~ 3950 4100
$EndSCHEMATC
