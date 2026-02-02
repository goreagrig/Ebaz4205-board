# And now a discussion of voltages on the PL pins that we access via
# the three 20 pin connectors..
# The Zynq puts these into two banks (34 and 34) and each bank can be configured
# to use a different IO voltage.  It could be one of 1.8, 2.5, or 3.3.
# It is important to know which and to get it right.
# Looking at the Ebaz schematic and using the package pin diagram to sort out some
# things, I am convinced that all the pins marked "VCCO_#" get 3.3 volts
# So, all of our 42 IO pins are permanently 3.3 volts on the Ebaz.
# No jumper setting of IO voltages like on some of the starter boards.


set_property CONFIG_VOLTAGE {3.3} [current_design]
set_property CFGBVS VCCO [current_design]


##CLOCK
#PIN N18
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports { clk }]; # Use if you have X5 Oscillator soldered on -- 33Mhz
create_clock -add -name clk_pin -period 20.00 -waveform {0.000 10.000} [get_ports { clk }];
#PIN U18
#set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports ETHERNET_CLOCK]
#pin u19
#set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports MULTICOMP_CLOCK]

#create_clock -period 5.000 -name clk -waveform {0.000 2.500} [get_ports clk]


##I/O
#set_property -dict { PACKAGE_PIN A20 IOSTANDARD LVCMOS33 } [get_ports { d1_5 }];   # hdmi2
#set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { d1_6 }];   # uart_usb_ttl - rx?
#set_property -dict { PACKAGE_PIN B19 IOSTANDARD LVCMOS33 } [get_ports { d1_7 }];   # hdmi1
#set_property -dict { PACKAGE_PIN B20 IOSTANDARD LVCMOS33 } [get_ports { d1_8 }];   # hdmi4
#set_property -dict { PACKAGE_PIN C20 IOSTANDARD LVCMOS33 } [get_ports { d1_9 }];   # hdmi3
#set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { d1_11 }];  # uart_usb_ttl - tx?
#set_property -dict { PACKAGE_PIN D20 IOSTANDARD LVCMOS33 } [get_ports { d1_13 }];  # hdmi6
#set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { d1_14 }];  # Buzzer
#set_property -dict { PACKAGE_PIN H18 IOSTANDARD LVCMOS33 } [get_ports { d1_15 }];  # led3
#set_property -dict { PACKAGE_PIN D19 IOSTANDARD LVCMOS33 } [get_ports { d1_16 }];  # hdmi5
#set_property -dict { PACKAGE_PIN F20 IOSTANDARD LVCMOS33 } [get_ports { d1_17 }];  # hdmi8
#set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS33 } [get_ports { d1_18 }];  # led1
#set_property -dict { PACKAGE_PIN F19 IOSTANDARD LVCMOS33 } [get_ports { d1_19 }];  # hdmi7
#set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { d1_20 }];  # led2

#set_property -dict { PACKAGE_PIN G20 IOSTANDARD LVCMOS33 } [get_ports { d2_5 }];   # H4
#set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { d2_6 }];   # H4
#set_property -dict { PACKAGE_PIN G19 IOSTANDARD LVCMOS33 } [get_ports { d2_7 }];   # H4
#set_property -dict { PACKAGE_PIN H20 IOSTANDARD LVCMOS33 } [get_ports { d2_8 }];   # H4
#set_property -dict { PACKAGE_PIN J19 IOSTANDARD LVCMOS33 } [get_ports { d2_9 }];   # H4
#set_property -dict { PACKAGE_PIN K18 IOSTANDARD LVCMOS33 } [get_ports { d2_11 }];  # H4
#set_property -dict { PACKAGE_PIN K19 IOSTANDARD LVCMOS33 } [get_ports { d2_13 }];  # H4
#set_property -dict { PACKAGE_PIN J20 IOSTANDARD LVCMOS33 } [get_ports { d2_14 }];  # H4
#set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { d2_15 }];  # H4
#set_property -dict { PACKAGE_PIN L19 IOSTANDARD LVCMOS33 } [get_ports { d2_16 }];  # H4
#set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports { d2_17 }];  # H4
#set_property -dict { PACKAGE_PIN L20 IOSTANDARD LVCMOS33 } [get_ports { d2_18 }];  # H4
#set_property -dict { PACKAGE_PIN M20 IOSTANDARD LVCMOS33 } [get_ports { d2_19 }];  # H4
#set_property -dict { PACKAGE_PIN L17 IOSTANDARD LVCMOS33 } [get_ports { d2_20 }];  # H4

#set_property -dict { PACKAGE_PIN M19 IOSTANDARD LVCMOS33 } [get_ports { d3_5 }];   # H4
#set_property -dict { PACKAGE_PIN N20 IOSTANDARD LVCMOS33 } [get_ports { d3_6 }];   # H4
#set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33 } [get_ports { d3_7 }];   # H4
#set_property -dict { PACKAGE_PIN M17 IOSTANDARD LVCMOS33 } [get_ports { d3_8 }];   # H4
#set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { d3_9 }];   # DATA3-9   lcd_res
#set_property -dict { PACKAGE_PIN P20 IOSTANDARD LVCMOS33 } [get_ports { d3_11 }];  # DATA3-11  lcd_sda
#set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [get_ports { d3_13 }];  # DATA3-13  lcd_dc
#set_property -dict { PACKAGE_PIN R19 IOSTANDARD LVCMOS33 } [get_ports { d3_14 }];  # DATA3-14  lcd_scl
#set_property -dict { PACKAGE_PIN P19 IOSTANDARD LVCMOS33 } [get_ports { d3_15 }];  # DATA3-15  K2
#set_property -dict { PACKAGE_PIN T20 IOSTANDARD LVCMOS33 } [get_ports { d3_16 }];  # DATA3-16  lcd_backlight
#set_property -dict { PACKAGE_PIN U20 IOSTANDARD LVCMOS33 } [get_ports { d3_17 }];  # DATA3-17  K3
#set_property -dict { PACKAGE_PIN T19 IOSTANDARD LVCMOS33 } [get_ports { d3_18 }];  # DATA3-18  K1
#set_property -dict { PACKAGE_PIN V20 IOSTANDARD LVCMOS33 } [get_ports { d3_19 }];  # DATA3-19  K5
#set_property -dict { PACKAGE_PIN U19 IOSTANDARD LVCMOS33 } [get_ports { d3_20 }];  # DATA3-20  K4

#H4
#J18 | G20
#H20 | G19
#J19 | K18
#K19 | J20
#L16 | L19
#M18 | L20
#M20 | L17
#N20 | M19
#M17 | P18
#3.3 | gnd

##Ethernet
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { eth0_phy_clk_o }]; 
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_RX_CLK_0 }]; 
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_TX_CLK_0 }]; 
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_RXD_0[3] }]; 
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_RXD_0[2] }]; 
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_RXD_0[1] }]; 
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_RXD_0[0] }]; 
#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_TXD_0[3] }]; 
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_TXD_0[2] }]; 
#set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_TXD_0[1] }]; 
#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_TXD_0[0] }]; 
#set_property -dict { PACKAGE_PIN W15   IOSTANDARD LVCMOS33 } [get_ports { MDIO_ETHERNET_0_0_mdc }]; 
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { MDIO_ETHERNET_0_0_mdio_io }]; #rest on
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_TX_EN_0[0] }]; 
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { ENET0_GMII_RX_DV_0 }];

##Serial port
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { UART_0_0_rxd }]; 
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { UART_0_0_txd }];

##J5&J3
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { J5_SPEED }]; 
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { J5_PWM }]; 
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { J3_SPEED }]; 
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { J3_PWM }]; 

##RTC
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { SCL }]; 
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { SDA }]; 

##SC Card
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { sd_dat2 }]; 
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { sd_dat3 }]; 
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { sd_cmd }]; 
#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { sd_clk }]; 
#set_property -dict { PACKAGE_PIN E12   IOSTANDARD LVCMOS33 } [get_ports { sd_dat0 }]; 
#set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { sd_dat1 }]; 
#set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33 } [get_ports { sd_detect }];

##Switches
#set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { sw2 }]; 
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { sw3 }];

##Reset
#set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { alt_reset }]; 
#set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { reset }]; 

##LED
#set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 } [get_ports { red_led }];
#set_property -dict { PACKAGE_PIN W13 IOSTANDARD LVCMOS33 } [get_ports { green_led }];
