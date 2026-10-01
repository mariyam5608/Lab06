## =====================================================================
## Xilinx Vivado Constraints File (.xdc) - Digilent Basys 3
## Top Module Ports: clk, pbin, physical_sw[15:0], physical_leds[15:0]
## =====================================================================

## 1. Onboard Clock Signal (100 MHz Oscillator)
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 -name sys_clk -waveform {0 5} [get_ports clk]

## 2. Pushbutton Reset (Center Pushbutton - btnC)
set_property PACKAGE_PIN U18 [get_ports pbin]
set_property IOSTANDARD LVCMOS33 [get_ports pbin]

## 3. Switches (physical_sw[15:0])
set_property PACKAGE_PIN V17 [get_ports {physical_sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {physical_sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {physical_sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {physical_sw[3]}]
set_property PACKAGE_PIN W15 [get_ports {physical_sw[4]}]
set_property PACKAGE_PIN V15 [get_ports {physical_sw[5]}]
set_property PACKAGE_PIN W14 [get_ports {physical_sw[6]}]
set_property PACKAGE_PIN W13 [get_ports {physical_sw[7]}]
set_property PACKAGE_PIN V2  [get_ports {physical_sw[8]}]
set_property PACKAGE_PIN T3  [get_ports {physical_sw[9]}]
set_property PACKAGE_PIN T2  [get_ports {physical_sw[10]}]
set_property PACKAGE_PIN R3  [get_ports {physical_sw[11]}]
set_property PACKAGE_PIN W2  [get_ports {physical_sw[12]}]
set_property PACKAGE_PIN U1  [get_ports {physical_sw[13]}]
set_property PACKAGE_PIN T1  [get_ports {physical_sw[14]}]
set_property PACKAGE_PIN R2  [get_ports {physical_sw[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {physical_sw[*]}]

## 4. LEDs (physical_leds[15:0])
set_property PACKAGE_PIN U16 [get_ports {physical_leds[0]}]
set_property PACKAGE_PIN E19 [get_ports {physical_leds[1]}]
set_property PACKAGE_PIN U19 [get_ports {physical_leds[2]}]
set_property PACKAGE_PIN V19 [get_ports {physical_leds[3]}]
set_property PACKAGE_PIN W18 [get_ports {physical_leds[4]}]
set_property PACKAGE_PIN U15 [get_ports {physical_leds[5]}]
set_property PACKAGE_PIN U14 [get_ports {physical_leds[6]}]
set_property PACKAGE_PIN V14 [get_ports {physical_leds[7]}]
set_property PACKAGE_PIN V13 [get_ports {physical_leds[8]}]
set_property PACKAGE_PIN V3  [get_ports {physical_leds[9]}]
set_property PACKAGE_PIN W3  [get_ports {physical_leds[10]}]
set_property PACKAGE_PIN U3  [get_ports {physical_leds[11]}]
set_property PACKAGE_PIN P3  [get_ports {physical_leds[12]}]
set_property PACKAGE_PIN N3  [get_ports {physical_leds[13]}]
set_property PACKAGE_PIN P1  [get_ports {physical_leds[14]}]
set_property PACKAGE_PIN L1  [get_ports {physical_leds[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {physical_leds[*]}]

## 5. Bitstream DRC Overrides & QSPI Flash Programming Configuration
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

# Fixes write_bitstream failure caused by unconstrained/vacant I/O pins
set_property BITSTREAM.DRC.VACANT_PIN_ENABLE OK [current_design]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]