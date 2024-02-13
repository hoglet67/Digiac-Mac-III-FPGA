#!/bin/bash -e

iverilog ../src/*.v
./a.out
gtkwave dump.vcd digiac.gtkw
