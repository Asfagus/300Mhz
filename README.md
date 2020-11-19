In this project, I completed a design from RTL-GDSii flow
It had several stages.

First, I had to create a multiplier and adder in Verilog and run it at a clock speed of 200Mhz, add two-flag push model,  
and get positive Setup Slack. This is in hw2

Then I was supposed to run the same design at 300Mhz, so I instantiated synopsys high-speed IPs for pipelined and faster design.

Then, I designed and added a fifo, to handle the testbench of different clock speed. This is in hw4_designhw1

Lastly, after design passed the testbench and synthesized properly, I placed and routed the design using Cadence Encounter. 

This is the final hw5 in the project, as shown in the image below.

![](hw5_pnr/Screenshot%20from%202020-03-14%2016-55-04.png)
