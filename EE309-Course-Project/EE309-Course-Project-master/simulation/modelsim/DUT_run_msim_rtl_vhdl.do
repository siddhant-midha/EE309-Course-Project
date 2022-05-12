transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/DUT.vhdl}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/i_mem.vhdl}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/d_mem.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/T2.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/T1.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/T0.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/SE10.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/SE7.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/PC.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/IR.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/D3.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/A2.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/A1.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/A3.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/register_16.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/alu.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/shifter.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/sign_extend.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/memory.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/count.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/fsm_controller.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/register_file.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/datapath.vhd}
vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/IITB_RISC.vhd}

vcom -93 -work work {D:/IIT/EE309/EE309-Course-Project/EE309-Course-Project-master/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
