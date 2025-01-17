###################################################################

# Created by write_sdc on Wed Dec 19 17:08:04 2018

###################################################################
set sdc_version 2.0

set_units -time ps -resistance kOhm -capacitance fF -voltage V -current mA
set_wire_load_mode top
set_wire_load_model -name 1K -library 14nm_sg_345K_maxfan4_wire
set_max_leakage_power 0
create_clock [get_ports clk]  -period 1429  -waveform {0 714.5}
set_clock_uncertainty 50  [get_clocks clk]
set_max_delay 1429  -to [get_ports {state[1]}]
set_max_delay 1429  -to [get_ports {state[0]}]
set_max_delay 1429  -to [get_ports {out[3][3][19]}]
set_max_delay 1429  -to [get_ports {out[3][3][18]}]
set_max_delay 1429  -to [get_ports {out[3][3][17]}]
set_max_delay 1429  -to [get_ports {out[3][3][16]}]
set_max_delay 1429  -to [get_ports {out[3][3][15]}]
set_max_delay 1429  -to [get_ports {out[3][3][14]}]
set_max_delay 1429  -to [get_ports {out[3][3][13]}]
set_max_delay 1429  -to [get_ports {out[3][3][12]}]
set_max_delay 1429  -to [get_ports {out[3][3][11]}]
set_max_delay 1429  -to [get_ports {out[3][3][10]}]
set_max_delay 1429  -to [get_ports {out[3][3][9]}]
set_max_delay 1429  -to [get_ports {out[3][3][8]}]
set_max_delay 1429  -to [get_ports {out[3][3][7]}]
set_max_delay 1429  -to [get_ports {out[3][3][6]}]
set_max_delay 1429  -to [get_ports {out[3][3][5]}]
set_max_delay 1429  -to [get_ports {out[3][3][4]}]
set_max_delay 1429  -to [get_ports {out[3][3][3]}]
set_max_delay 1429  -to [get_ports {out[3][3][2]}]
set_max_delay 1429  -to [get_ports {out[3][3][1]}]
set_max_delay 1429  -to [get_ports {out[3][3][0]}]
set_max_delay 1429  -to [get_ports {out[3][2][19]}]
set_max_delay 1429  -to [get_ports {out[3][2][18]}]
set_max_delay 1429  -to [get_ports {out[3][2][17]}]
set_max_delay 1429  -to [get_ports {out[3][2][16]}]
set_max_delay 1429  -to [get_ports {out[3][2][15]}]
set_max_delay 1429  -to [get_ports {out[3][2][14]}]
set_max_delay 1429  -to [get_ports {out[3][2][13]}]
set_max_delay 1429  -to [get_ports {out[3][2][12]}]
set_max_delay 1429  -to [get_ports {out[3][2][11]}]
set_max_delay 1429  -to [get_ports {out[3][2][10]}]
set_max_delay 1429  -to [get_ports {out[3][2][9]}]
set_max_delay 1429  -to [get_ports {out[3][2][8]}]
set_max_delay 1429  -to [get_ports {out[3][2][7]}]
set_max_delay 1429  -to [get_ports {out[3][2][6]}]
set_max_delay 1429  -to [get_ports {out[3][2][5]}]
set_max_delay 1429  -to [get_ports {out[3][2][4]}]
set_max_delay 1429  -to [get_ports {out[3][2][3]}]
set_max_delay 1429  -to [get_ports {out[3][2][2]}]
set_max_delay 1429  -to [get_ports {out[3][2][1]}]
set_max_delay 1429  -to [get_ports {out[3][2][0]}]
set_max_delay 1429  -to [get_ports {out[3][1][19]}]
set_max_delay 1429  -to [get_ports {out[3][1][18]}]
set_max_delay 1429  -to [get_ports {out[3][1][17]}]
set_max_delay 1429  -to [get_ports {out[3][1][16]}]
set_max_delay 1429  -to [get_ports {out[3][1][15]}]
set_max_delay 1429  -to [get_ports {out[3][1][14]}]
set_max_delay 1429  -to [get_ports {out[3][1][13]}]
set_max_delay 1429  -to [get_ports {out[3][1][12]}]
set_max_delay 1429  -to [get_ports {out[3][1][11]}]
set_max_delay 1429  -to [get_ports {out[3][1][10]}]
set_max_delay 1429  -to [get_ports {out[3][1][9]}]
set_max_delay 1429  -to [get_ports {out[3][1][8]}]
set_max_delay 1429  -to [get_ports {out[3][1][7]}]
set_max_delay 1429  -to [get_ports {out[3][1][6]}]
set_max_delay 1429  -to [get_ports {out[3][1][5]}]
set_max_delay 1429  -to [get_ports {out[3][1][4]}]
set_max_delay 1429  -to [get_ports {out[3][1][3]}]
set_max_delay 1429  -to [get_ports {out[3][1][2]}]
set_max_delay 1429  -to [get_ports {out[3][1][1]}]
set_max_delay 1429  -to [get_ports {out[3][1][0]}]
set_max_delay 1429  -to [get_ports {out[3][0][19]}]
set_max_delay 1429  -to [get_ports {out[3][0][18]}]
set_max_delay 1429  -to [get_ports {out[3][0][17]}]
set_max_delay 1429  -to [get_ports {out[3][0][16]}]
set_max_delay 1429  -to [get_ports {out[3][0][15]}]
set_max_delay 1429  -to [get_ports {out[3][0][14]}]
set_max_delay 1429  -to [get_ports {out[3][0][13]}]
set_max_delay 1429  -to [get_ports {out[3][0][12]}]
set_max_delay 1429  -to [get_ports {out[3][0][11]}]
set_max_delay 1429  -to [get_ports {out[3][0][10]}]
set_max_delay 1429  -to [get_ports {out[3][0][9]}]
set_max_delay 1429  -to [get_ports {out[3][0][8]}]
set_max_delay 1429  -to [get_ports {out[3][0][7]}]
set_max_delay 1429  -to [get_ports {out[3][0][6]}]
set_max_delay 1429  -to [get_ports {out[3][0][5]}]
set_max_delay 1429  -to [get_ports {out[3][0][4]}]
set_max_delay 1429  -to [get_ports {out[3][0][3]}]
set_max_delay 1429  -to [get_ports {out[3][0][2]}]
set_max_delay 1429  -to [get_ports {out[3][0][1]}]
set_max_delay 1429  -to [get_ports {out[3][0][0]}]
set_max_delay 1429  -to [get_ports {out[2][3][19]}]
set_max_delay 1429  -to [get_ports {out[2][3][18]}]
set_max_delay 1429  -to [get_ports {out[2][3][17]}]
set_max_delay 1429  -to [get_ports {out[2][3][16]}]
set_max_delay 1429  -to [get_ports {out[2][3][15]}]
set_max_delay 1429  -to [get_ports {out[2][3][14]}]
set_max_delay 1429  -to [get_ports {out[2][3][13]}]
set_max_delay 1429  -to [get_ports {out[2][3][12]}]
set_max_delay 1429  -to [get_ports {out[2][3][11]}]
set_max_delay 1429  -to [get_ports {out[2][3][10]}]
set_max_delay 1429  -to [get_ports {out[2][3][9]}]
set_max_delay 1429  -to [get_ports {out[2][3][8]}]
set_max_delay 1429  -to [get_ports {out[2][3][7]}]
set_max_delay 1429  -to [get_ports {out[2][3][6]}]
set_max_delay 1429  -to [get_ports {out[2][3][5]}]
set_max_delay 1429  -to [get_ports {out[2][3][4]}]
set_max_delay 1429  -to [get_ports {out[2][3][3]}]
set_max_delay 1429  -to [get_ports {out[2][3][2]}]
set_max_delay 1429  -to [get_ports {out[2][3][1]}]
set_max_delay 1429  -to [get_ports {out[2][3][0]}]
set_max_delay 1429  -to [get_ports {out[2][2][19]}]
set_max_delay 1429  -to [get_ports {out[2][2][18]}]
set_max_delay 1429  -to [get_ports {out[2][2][17]}]
set_max_delay 1429  -to [get_ports {out[2][2][16]}]
set_max_delay 1429  -to [get_ports {out[2][2][15]}]
set_max_delay 1429  -to [get_ports {out[2][2][14]}]
set_max_delay 1429  -to [get_ports {out[2][2][13]}]
set_max_delay 1429  -to [get_ports {out[2][2][12]}]
set_max_delay 1429  -to [get_ports {out[2][2][11]}]
set_max_delay 1429  -to [get_ports {out[2][2][10]}]
set_max_delay 1429  -to [get_ports {out[2][2][9]}]
set_max_delay 1429  -to [get_ports {out[2][2][8]}]
set_max_delay 1429  -to [get_ports {out[2][2][7]}]
set_max_delay 1429  -to [get_ports {out[2][2][6]}]
set_max_delay 1429  -to [get_ports {out[2][2][5]}]
set_max_delay 1429  -to [get_ports {out[2][2][4]}]
set_max_delay 1429  -to [get_ports {out[2][2][3]}]
set_max_delay 1429  -to [get_ports {out[2][2][2]}]
set_max_delay 1429  -to [get_ports {out[2][2][1]}]
set_max_delay 1429  -to [get_ports {out[2][2][0]}]
set_max_delay 1429  -to [get_ports {out[2][1][19]}]
set_max_delay 1429  -to [get_ports {out[2][1][18]}]
set_max_delay 1429  -to [get_ports {out[2][1][17]}]
set_max_delay 1429  -to [get_ports {out[2][1][16]}]
set_max_delay 1429  -to [get_ports {out[2][1][15]}]
set_max_delay 1429  -to [get_ports {out[2][1][14]}]
set_max_delay 1429  -to [get_ports {out[2][1][13]}]
set_max_delay 1429  -to [get_ports {out[2][1][12]}]
set_max_delay 1429  -to [get_ports {out[2][1][11]}]
set_max_delay 1429  -to [get_ports {out[2][1][10]}]
set_max_delay 1429  -to [get_ports {out[2][1][9]}]
set_max_delay 1429  -to [get_ports {out[2][1][8]}]
set_max_delay 1429  -to [get_ports {out[2][1][7]}]
set_max_delay 1429  -to [get_ports {out[2][1][6]}]
set_max_delay 1429  -to [get_ports {out[2][1][5]}]
set_max_delay 1429  -to [get_ports {out[2][1][4]}]
set_max_delay 1429  -to [get_ports {out[2][1][3]}]
set_max_delay 1429  -to [get_ports {out[2][1][2]}]
set_max_delay 1429  -to [get_ports {out[2][1][1]}]
set_max_delay 1429  -to [get_ports {out[2][1][0]}]
set_max_delay 1429  -to [get_ports {out[2][0][19]}]
set_max_delay 1429  -to [get_ports {out[2][0][18]}]
set_max_delay 1429  -to [get_ports {out[2][0][17]}]
set_max_delay 1429  -to [get_ports {out[2][0][16]}]
set_max_delay 1429  -to [get_ports {out[2][0][15]}]
set_max_delay 1429  -to [get_ports {out[2][0][14]}]
set_max_delay 1429  -to [get_ports {out[2][0][13]}]
set_max_delay 1429  -to [get_ports {out[2][0][12]}]
set_max_delay 1429  -to [get_ports {out[2][0][11]}]
set_max_delay 1429  -to [get_ports {out[2][0][10]}]
set_max_delay 1429  -to [get_ports {out[2][0][9]}]
set_max_delay 1429  -to [get_ports {out[2][0][8]}]
set_max_delay 1429  -to [get_ports {out[2][0][7]}]
set_max_delay 1429  -to [get_ports {out[2][0][6]}]
set_max_delay 1429  -to [get_ports {out[2][0][5]}]
set_max_delay 1429  -to [get_ports {out[2][0][4]}]
set_max_delay 1429  -to [get_ports {out[2][0][3]}]
set_max_delay 1429  -to [get_ports {out[2][0][2]}]
set_max_delay 1429  -to [get_ports {out[2][0][1]}]
set_max_delay 1429  -to [get_ports {out[2][0][0]}]
set_max_delay 1429  -to [get_ports {out[1][3][19]}]
set_max_delay 1429  -to [get_ports {out[1][3][18]}]
set_max_delay 1429  -to [get_ports {out[1][3][17]}]
set_max_delay 1429  -to [get_ports {out[1][3][16]}]
set_max_delay 1429  -to [get_ports {out[1][3][15]}]
set_max_delay 1429  -to [get_ports {out[1][3][14]}]
set_max_delay 1429  -to [get_ports {out[1][3][13]}]
set_max_delay 1429  -to [get_ports {out[1][3][12]}]
set_max_delay 1429  -to [get_ports {out[1][3][11]}]
set_max_delay 1429  -to [get_ports {out[1][3][10]}]
set_max_delay 1429  -to [get_ports {out[1][3][9]}]
set_max_delay 1429  -to [get_ports {out[1][3][8]}]
set_max_delay 1429  -to [get_ports {out[1][3][7]}]
set_max_delay 1429  -to [get_ports {out[1][3][6]}]
set_max_delay 1429  -to [get_ports {out[1][3][5]}]
set_max_delay 1429  -to [get_ports {out[1][3][4]}]
set_max_delay 1429  -to [get_ports {out[1][3][3]}]
set_max_delay 1429  -to [get_ports {out[1][3][2]}]
set_max_delay 1429  -to [get_ports {out[1][3][1]}]
set_max_delay 1429  -to [get_ports {out[1][3][0]}]
set_max_delay 1429  -to [get_ports {out[1][2][19]}]
set_max_delay 1429  -to [get_ports {out[1][2][18]}]
set_max_delay 1429  -to [get_ports {out[1][2][17]}]
set_max_delay 1429  -to [get_ports {out[1][2][16]}]
set_max_delay 1429  -to [get_ports {out[1][2][15]}]
set_max_delay 1429  -to [get_ports {out[1][2][14]}]
set_max_delay 1429  -to [get_ports {out[1][2][13]}]
set_max_delay 1429  -to [get_ports {out[1][2][12]}]
set_max_delay 1429  -to [get_ports {out[1][2][11]}]
set_max_delay 1429  -to [get_ports {out[1][2][10]}]
set_max_delay 1429  -to [get_ports {out[1][2][9]}]
set_max_delay 1429  -to [get_ports {out[1][2][8]}]
set_max_delay 1429  -to [get_ports {out[1][2][7]}]
set_max_delay 1429  -to [get_ports {out[1][2][6]}]
set_max_delay 1429  -to [get_ports {out[1][2][5]}]
set_max_delay 1429  -to [get_ports {out[1][2][4]}]
set_max_delay 1429  -to [get_ports {out[1][2][3]}]
set_max_delay 1429  -to [get_ports {out[1][2][2]}]
set_max_delay 1429  -to [get_ports {out[1][2][1]}]
set_max_delay 1429  -to [get_ports {out[1][2][0]}]
set_max_delay 1429  -to [get_ports {out[1][1][19]}]
set_max_delay 1429  -to [get_ports {out[1][1][18]}]
set_max_delay 1429  -to [get_ports {out[1][1][17]}]
set_max_delay 1429  -to [get_ports {out[1][1][16]}]
set_max_delay 1429  -to [get_ports {out[1][1][15]}]
set_max_delay 1429  -to [get_ports {out[1][1][14]}]
set_max_delay 1429  -to [get_ports {out[1][1][13]}]
set_max_delay 1429  -to [get_ports {out[1][1][12]}]
set_max_delay 1429  -to [get_ports {out[1][1][11]}]
set_max_delay 1429  -to [get_ports {out[1][1][10]}]
set_max_delay 1429  -to [get_ports {out[1][1][9]}]
set_max_delay 1429  -to [get_ports {out[1][1][8]}]
set_max_delay 1429  -to [get_ports {out[1][1][7]}]
set_max_delay 1429  -to [get_ports {out[1][1][6]}]
set_max_delay 1429  -to [get_ports {out[1][1][5]}]
set_max_delay 1429  -to [get_ports {out[1][1][4]}]
set_max_delay 1429  -to [get_ports {out[1][1][3]}]
set_max_delay 1429  -to [get_ports {out[1][1][2]}]
set_max_delay 1429  -to [get_ports {out[1][1][1]}]
set_max_delay 1429  -to [get_ports {out[1][1][0]}]
set_max_delay 1429  -to [get_ports {out[1][0][19]}]
set_max_delay 1429  -to [get_ports {out[1][0][18]}]
set_max_delay 1429  -to [get_ports {out[1][0][17]}]
set_max_delay 1429  -to [get_ports {out[1][0][16]}]
set_max_delay 1429  -to [get_ports {out[1][0][15]}]
set_max_delay 1429  -to [get_ports {out[1][0][14]}]
set_max_delay 1429  -to [get_ports {out[1][0][13]}]
set_max_delay 1429  -to [get_ports {out[1][0][12]}]
set_max_delay 1429  -to [get_ports {out[1][0][11]}]
set_max_delay 1429  -to [get_ports {out[1][0][10]}]
set_max_delay 1429  -to [get_ports {out[1][0][9]}]
set_max_delay 1429  -to [get_ports {out[1][0][8]}]
set_max_delay 1429  -to [get_ports {out[1][0][7]}]
set_max_delay 1429  -to [get_ports {out[1][0][6]}]
set_max_delay 1429  -to [get_ports {out[1][0][5]}]
set_max_delay 1429  -to [get_ports {out[1][0][4]}]
set_max_delay 1429  -to [get_ports {out[1][0][3]}]
set_max_delay 1429  -to [get_ports {out[1][0][2]}]
set_max_delay 1429  -to [get_ports {out[1][0][1]}]
set_max_delay 1429  -to [get_ports {out[1][0][0]}]
set_max_delay 1429  -to [get_ports {out[0][3][19]}]
set_max_delay 1429  -to [get_ports {out[0][3][18]}]
set_max_delay 1429  -to [get_ports {out[0][3][17]}]
set_max_delay 1429  -to [get_ports {out[0][3][16]}]
set_max_delay 1429  -to [get_ports {out[0][3][15]}]
set_max_delay 1429  -to [get_ports {out[0][3][14]}]
set_max_delay 1429  -to [get_ports {out[0][3][13]}]
set_max_delay 1429  -to [get_ports {out[0][3][12]}]
set_max_delay 1429  -to [get_ports {out[0][3][11]}]
set_max_delay 1429  -to [get_ports {out[0][3][10]}]
set_max_delay 1429  -to [get_ports {out[0][3][9]}]
set_max_delay 1429  -to [get_ports {out[0][3][8]}]
set_max_delay 1429  -to [get_ports {out[0][3][7]}]
set_max_delay 1429  -to [get_ports {out[0][3][6]}]
set_max_delay 1429  -to [get_ports {out[0][3][5]}]
set_max_delay 1429  -to [get_ports {out[0][3][4]}]
set_max_delay 1429  -to [get_ports {out[0][3][3]}]
set_max_delay 1429  -to [get_ports {out[0][3][2]}]
set_max_delay 1429  -to [get_ports {out[0][3][1]}]
set_max_delay 1429  -to [get_ports {out[0][3][0]}]
set_max_delay 1429  -to [get_ports {out[0][2][19]}]
set_max_delay 1429  -to [get_ports {out[0][2][18]}]
set_max_delay 1429  -to [get_ports {out[0][2][17]}]
set_max_delay 1429  -to [get_ports {out[0][2][16]}]
set_max_delay 1429  -to [get_ports {out[0][2][15]}]
set_max_delay 1429  -to [get_ports {out[0][2][14]}]
set_max_delay 1429  -to [get_ports {out[0][2][13]}]
set_max_delay 1429  -to [get_ports {out[0][2][12]}]
set_max_delay 1429  -to [get_ports {out[0][2][11]}]
set_max_delay 1429  -to [get_ports {out[0][2][10]}]
set_max_delay 1429  -to [get_ports {out[0][2][9]}]
set_max_delay 1429  -to [get_ports {out[0][2][8]}]
set_max_delay 1429  -to [get_ports {out[0][2][7]}]
set_max_delay 1429  -to [get_ports {out[0][2][6]}]
set_max_delay 1429  -to [get_ports {out[0][2][5]}]
set_max_delay 1429  -to [get_ports {out[0][2][4]}]
set_max_delay 1429  -to [get_ports {out[0][2][3]}]
set_max_delay 1429  -to [get_ports {out[0][2][2]}]
set_max_delay 1429  -to [get_ports {out[0][2][1]}]
set_max_delay 1429  -to [get_ports {out[0][2][0]}]
set_max_delay 1429  -to [get_ports {out[0][1][19]}]
set_max_delay 1429  -to [get_ports {out[0][1][18]}]
set_max_delay 1429  -to [get_ports {out[0][1][17]}]
set_max_delay 1429  -to [get_ports {out[0][1][16]}]
set_max_delay 1429  -to [get_ports {out[0][1][15]}]
set_max_delay 1429  -to [get_ports {out[0][1][14]}]
set_max_delay 1429  -to [get_ports {out[0][1][13]}]
set_max_delay 1429  -to [get_ports {out[0][1][12]}]
set_max_delay 1429  -to [get_ports {out[0][1][11]}]
set_max_delay 1429  -to [get_ports {out[0][1][10]}]
set_max_delay 1429  -to [get_ports {out[0][1][9]}]
set_max_delay 1429  -to [get_ports {out[0][1][8]}]
set_max_delay 1429  -to [get_ports {out[0][1][7]}]
set_max_delay 1429  -to [get_ports {out[0][1][6]}]
set_max_delay 1429  -to [get_ports {out[0][1][5]}]
set_max_delay 1429  -to [get_ports {out[0][1][4]}]
set_max_delay 1429  -to [get_ports {out[0][1][3]}]
set_max_delay 1429  -to [get_ports {out[0][1][2]}]
set_max_delay 1429  -to [get_ports {out[0][1][1]}]
set_max_delay 1429  -to [get_ports {out[0][1][0]}]
set_max_delay 1429  -to [get_ports {out[0][0][19]}]
set_max_delay 1429  -to [get_ports {out[0][0][18]}]
set_max_delay 1429  -to [get_ports {out[0][0][17]}]
set_max_delay 1429  -to [get_ports {out[0][0][16]}]
set_max_delay 1429  -to [get_ports {out[0][0][15]}]
set_max_delay 1429  -to [get_ports {out[0][0][14]}]
set_max_delay 1429  -to [get_ports {out[0][0][13]}]
set_max_delay 1429  -to [get_ports {out[0][0][12]}]
set_max_delay 1429  -to [get_ports {out[0][0][11]}]
set_max_delay 1429  -to [get_ports {out[0][0][10]}]
set_max_delay 1429  -to [get_ports {out[0][0][9]}]
set_max_delay 1429  -to [get_ports {out[0][0][8]}]
set_max_delay 1429  -to [get_ports {out[0][0][7]}]
set_max_delay 1429  -to [get_ports {out[0][0][6]}]
set_max_delay 1429  -to [get_ports {out[0][0][5]}]
set_max_delay 1429  -to [get_ports {out[0][0][4]}]
set_max_delay 1429  -to [get_ports {out[0][0][3]}]
set_max_delay 1429  -to [get_ports {out[0][0][2]}]
set_max_delay 1429  -to [get_ports {out[0][0][1]}]
set_max_delay 1429  -to [get_ports {out[0][0][0]}]
