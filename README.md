In this project, we completed a design from RTL-GDSii flow
It had several stages.

First, I had to create a multiplier and adder in Verilog and run it at a clock speed of 200Mhz, 
and get positive Setup Slack. This is in hw2

Then we had to run the same design at 300Mhz, and we instantiated synopsys mul-add IPs for pipelined and faster design.

Then, we had to add a fifo, to handle the testbench of different clock speed. This is in hw4_designhw1

Lastly, after design passed the testbench and synthesized properly, I had to place and route the design using Cadence Encounter. 

This is the final hw5 in the project, as shown in the image below.

![](hw5_pnr/Screenshot%20from%202020-03-14%2016-55-04.png)
