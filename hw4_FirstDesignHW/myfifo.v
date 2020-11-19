//reset
//do you want us to use $readmemh/$readmemb
module myfifo(
	input clk,
	input din,
	input pushout,
	input stopout,
	output dout,
	output reg full = 1'b0,
	output reg empty= 1'b1);

	reg [44:0] mem [31:0];
	reg [4:0] radd=5'b0,wadd=5'b0;
	wire [44:0] din;
	reg [44:0] din, dout;
	reg [4:0] add= 5'b0;
		
	always @ (*)
	begin
	if (reset)
	begin
		full = 1'b0;
		empty= 1'b1;
		dout = 45'h0;
		add = 0;
	end
	else begin
	//Full Check
		if (add==32)
			full = 1'b1;
			else full=1'b0;
	//Empty Check
		if (add<32)
			empty = 1'b1;
	//Write
		if (pushout && !full)begin
		 @(posedge clk);
			mem[add]= din;
			add = add+1; 
			end
	/*//for stopout
		if(add==0) begin
			stopout=1'b1;
			end
			else
			stopout=1'b0;
	*/
	//Read	
		if (!stopout && empty) begin
		@(posedge clk);
			dout = mem[add-1];
			add = add-1;
		end
	
	
	
	
		
	end
	end
	
endmodule
/*always @ (*)
	begin 
	//Write
		if (pushout && !full)begin
			mem[add]= din;
			add = add+1; 
			end
	//Read	
		if (!stopout && !empty) begin
			dout = mem[add];
			add = add-1;
		end
	//Full Check
		if ()
			full = 1'b1;
	//Empty Check
		if ()
			empty = 1'b1;
	end */
	