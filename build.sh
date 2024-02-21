#!/bin/bash -e

PATH=/opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64:$PATH

mkdir -p build

beebasm -i firmware/digiac-mac-iii.asm -o build/rom.bin

od -An -tx1 -w1 -v build/rom.bin | cut -c2-3 > build/rom.mem

data2mem -bm xilinx/digiac_bd.bmm -bd build/rom.mem -bt xilinx/working/digiac.bit -o b build/digiac.bit

promgen -u 0 build/digiac.bit  -o build/digiac.mcs -p mcs -w -spi -s 4096
