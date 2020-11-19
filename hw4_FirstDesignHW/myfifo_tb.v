`timescale 1ns/10ps
module myfifo_tb();
reg clk,reset;
reg [44:0] wr_data;
wire wr_en,rd_en;
wire [44:0]rd_data;
wire full,empty;  
reg pushout, stopout;
integer i;
myfifo u1 (.clk(clk), .wr_data(wr_data), .wr_en(wr_en), .rd_en(rd_en), 
	.reset(reset), .rd_data(rd_data), .full(full), .empty(empty));



assign rd_en = (!stopout && !empty)?1'b1:1'b0;
assign wr_en = (!full && pushout)?1'b1:1'b0;
// to read, stopout = 0 and empty = 0
//to write pushout = 1 and full = 0
initial begin
	clk = 0;
	reset =1;
	pushout = 0;
	stopout = 1;
	
	//write
	for (i=0;i<6;i=i+1) begin 
	#4;
	reset =	0;
	pushout = 1; //data going into fifo
	stopout = 1;
	wr_data = i;
	end
		
	//read
	#5;
		
	reset =	0;
	pushout = 0; //data going out of fifo
	stopout = 0;
	#50;	
	
	$finish;



end

initial begin
$monitor ("rd_en %b, wr_en %b, full %b, empty %b, rd_data %h wr_ptr %d, rd_ptr %d p%b s%b",rd_en, wr_en, full, empty, rd_data,u1.wr_ptr, u1.rd_ptr,pushout, stopout);
end
initial begin
$dumpfile("Test.vcd");
$dumpvars;
end
always #2 clk = ~clk;

endmodule
