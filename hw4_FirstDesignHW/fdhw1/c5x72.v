// A homework problem for ee287



module c5x72(input clk, input reset,input [5:0] ca,
       input [32:0] cd,input cw,input push_samp,
       input signed [39:0] samp0_0,
       input signed [39:0] samp0_1,
       input signed [39:0] samp0_2,
       input signed [39:0] samp0_3,
       input signed [39:0] samp0_4,
       input signed [39:0] samp1_0,
       input signed [39:0] samp1_1,
       input signed [39:0] samp1_2,
       input signed [39:0] samp1_3,
       input signed [39:0] samp1_4,
       input signed [39:0] samp2_0,
       input signed [39:0] samp2_1,
       input signed [39:0] samp2_2,
       input signed [39:0] samp2_3,
       input signed [39:0] samp2_4,
       input signed [39:0] samp3_0,
       input signed [39:0] samp3_1,
       input signed [39:0] samp3_2,
       input signed [39:0] samp3_3,
       input signed [39:0] samp3_4,
       input signed [39:0] samp4_0,
       input signed [39:0] samp4_1,
       input signed [39:0] samp4_2,
       input signed [39:0] samp4_3,
       input signed [39:0] samp4_4,
       input signed [39:0] samp5_0,
       input signed [39:0] samp5_1,
       input signed [39:0] samp5_2,
       input signed [39:0] samp5_3,
       input signed [39:0] samp5_4,
       input signed [39:0] samp6_0,
       input signed [39:0] samp6_1,
       input signed [39:0] samp6_2,
       input signed [39:0] samp6_3,
       input signed [39:0] samp6_4,
       output pushout, input stopout,output signed [44:0] res);
    reg signed [39:0] idata0_0,idata0_0_d;
    reg signed [39:0] idata0_1,idata0_1_d;
    reg signed [39:0] idata0_2,idata0_2_d;
    reg signed [39:0] idata0_3,idata0_3_d;
    reg signed [39:0] idata0_4,idata0_4_d;
    reg signed [39:0] idata1_0,idata1_0_d;
    reg signed [39:0] idata1_1,idata1_1_d;
    reg signed [39:0] idata1_2,idata1_2_d;
    reg signed [39:0] idata1_3,idata1_3_d;
    reg signed [39:0] idata1_4,idata1_4_d;
    reg signed [39:0] idata2_0,idata2_0_d;
    reg signed [39:0] idata2_1,idata2_1_d;
    reg signed [39:0] idata2_2,idata2_2_d;
    reg signed [39:0] idata2_3,idata2_3_d;
    reg signed [39:0] idata2_4,idata2_4_d;
    reg signed [39:0] idata3_0,idata3_0_d;
    reg signed [39:0] idata3_1,idata3_1_d;
    reg signed [39:0] idata3_2,idata3_2_d;
    reg signed [39:0] idata3_3,idata3_3_d;
    reg signed [39:0] idata3_4,idata3_4_d;
    reg signed [39:0] idata4_0,idata4_0_d;
    reg signed [39:0] idata4_1,idata4_1_d;
    reg signed [39:0] idata4_2,idata4_2_d;
    reg signed [39:0] idata4_3,idata4_3_d;
    reg signed [39:0] idata4_4,idata4_4_d;
    reg signed [39:0] idata5_0,idata5_0_d;
    reg signed [39:0] idata5_1,idata5_1_d;
    reg signed [39:0] idata5_2,idata5_2_d;
    reg signed [39:0] idata5_3,idata5_3_d;
    reg signed [39:0] idata5_4,idata5_4_d;
    reg signed [39:0] idata6_0,idata6_0_d;
    reg signed [39:0] idata6_1,idata6_1_d;
    reg signed [39:0] idata6_2,idata6_2_d;
    reg signed [39:0] idata6_3,idata6_3_d;
    reg signed [39:0] idata6_4,idata6_4_d;
    reg signed [32:0] wdata0_0_d,wdata0_0;
    reg signed [32:0] wdata0_1_d,wdata0_1;
    reg signed [32:0] wdata0_2_d,wdata0_2;
    reg signed [32:0] wdata0_3_d,wdata0_3;
    reg signed [32:0] wdata0_4_d,wdata0_4;
    reg signed [32:0] wdata1_0_d,wdata1_0;
    reg signed [32:0] wdata1_1_d,wdata1_1;
    reg signed [32:0] wdata1_2_d,wdata1_2;
    reg signed [32:0] wdata1_3_d,wdata1_3;
    reg signed [32:0] wdata1_4_d,wdata1_4;
    reg signed [32:0] wdata2_0_d,wdata2_0;
    reg signed [32:0] wdata2_1_d,wdata2_1;
    reg signed [32:0] wdata2_2_d,wdata2_2;
    reg signed [32:0] wdata2_3_d,wdata2_3;
    reg signed [32:0] wdata2_4_d,wdata2_4;
    reg signed [32:0] wdata3_0_d,wdata3_0;
    reg signed [32:0] wdata3_1_d,wdata3_1;
    reg signed [32:0] wdata3_2_d,wdata3_2;
    reg signed [32:0] wdata3_3_d,wdata3_3;
    reg signed [32:0] wdata3_4_d,wdata3_4;
    reg signed [32:0] wdata4_0_d,wdata4_0;
    reg signed [32:0] wdata4_1_d,wdata4_1;
    reg signed [32:0] wdata4_2_d,wdata4_2;
    reg signed [32:0] wdata4_3_d,wdata4_3;
    reg signed [32:0] wdata4_4_d,wdata4_4;
    reg signed [32:0] wdata5_0_d,wdata5_0;
    reg signed [32:0] wdata5_1_d,wdata5_1;
    reg signed [32:0] wdata5_2_d,wdata5_2;
    reg signed [32:0] wdata5_3_d,wdata5_3;
    reg signed [32:0] wdata5_4_d,wdata5_4;
    reg signed [32:0] wdata6_0_d,wdata6_0;
    reg signed [32:0] wdata6_1_d,wdata6_1;
    reg signed [32:0] wdata6_2_d,wdata6_2;
    reg signed [32:0] wdata6_3_d,wdata6_3;
    reg signed [32:0] wdata6_4_d,wdata6_4;
    reg signed [79:0] mr0_0,mr0_0_d;
    reg signed [79:0] mr0_1,mr0_1_d;
    reg signed [79:0] mr0_2,mr0_2_d;
    reg signed [79:0] mr0_3,mr0_3_d;
    reg signed [79:0] mr0_4,mr0_4_d;
    reg signed [79:0] mr1_0,mr1_0_d;
    reg signed [79:0] mr1_1,mr1_1_d;
    reg signed [79:0] mr1_2,mr1_2_d;
    reg signed [79:0] mr1_3,mr1_3_d;
    reg signed [79:0] mr1_4,mr1_4_d;
    reg signed [79:0] mr2_0,mr2_0_d;
    reg signed [79:0] mr2_1,mr2_1_d;
    reg signed [79:0] mr2_2,mr2_2_d;
    reg signed [79:0] mr2_3,mr2_3_d;
    reg signed [79:0] mr2_4,mr2_4_d;
    reg signed [79:0] mr3_0,mr3_0_d;
    reg signed [79:0] mr3_1,mr3_1_d;
    reg signed [79:0] mr3_2,mr3_2_d;
    reg signed [79:0] mr3_3,mr3_3_d;
    reg signed [79:0] mr3_4,mr3_4_d;
    reg signed [79:0] mr4_0,mr4_0_d;
    reg signed [79:0] mr4_1,mr4_1_d;
    reg signed [79:0] mr4_2,mr4_2_d;
    reg signed [79:0] mr4_3,mr4_3_d;
    reg signed [79:0] mr4_4,mr4_4_d;
    reg signed [79:0] mr5_0,mr5_0_d;
    reg signed [79:0] mr5_1,mr5_1_d;
    reg signed [79:0] mr5_2,mr5_2_d;
    reg signed [79:0] mr5_3,mr5_3_d;
    reg signed [79:0] mr5_4,mr5_4_d;
    reg signed [79:0] mr6_0,mr6_0_d;
    reg signed [79:0] mr6_1,mr6_1_d;
    reg signed [79:0] mr6_2,mr6_2_d;
    reg signed [79:0] mr6_3,mr6_3_d;
    reg signed [79:0] mr6_4,mr6_4_d;
    reg signed [79:0] mrsum;
    reg signed[44:0] mrfinal_d,mrfinal;
    reg pushs_d,pushs,pusho,pusho_d;

 wire signed [72:0] multiply [0:34];
	wire writep, readp, emptyp, fullp, stop;
	wire signed [44:0] data_out;
 reg a1,a2,a3;
 reg [79:0] sum_d_1,sum_d_2;
 reg [79:0] sum_d;
   /* assign pushout=~emptyp;
    assign res=data_out;

assign stop = (pushout & stopout);
assign writep = ~fullp & pusho;
assign readp = ~emptyp & ~stop;

//fifo f(clk, reset, mrfinal, writep, readp, data_out, emptyp, fullp);
*/
reg a,b,c,d;
	wire [44:0]dout_d;
	reg [44:0] dout,temp;
	wire full,empty;
	wire pushout_d;
	reg pushout;
    	//assign pushout=pusho;
    	assign res=dout;
	assign pushout_d=~empty;
    
	myfifo u1 (.clk(clk), .wr_data(mrfinal), .wr_en(wr_en), .rd_en(rd_en), 
		.reset(reset), .rd_data(dout_d), .full(full), .empty(empty));



	assign wr_en = (~full && pusho)?1'b1:1'b0;
	assign rd_en = (~stopout && ~empty)?1'b1:1'b0; 

    DW02_mult_4_stage  #(33,40)mul0_0(.A(wdata0_0),.B(idata0_0),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[0]));
    DW02_mult_4_stage  #(33,40)mul0_1(.A(wdata0_1),.B(idata0_1),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[1]));
    DW02_mult_4_stage  #(33,40)mul0_2(.A(wdata0_2),.B(idata0_2),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[2]));
    DW02_mult_4_stage  #(33,40)mul0_3(.A(wdata0_3),.B(idata0_3),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[3]));
    DW02_mult_4_stage  #(33,40)mul0_4(.A(wdata0_4),.B(idata0_4),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[4]));
    DW02_mult_4_stage  #(33,40)mul1_0(.A(wdata1_0),.B(idata1_0),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[5]));
    DW02_mult_4_stage  #(33,40)mul1_1(.A(wdata1_1),.B(idata1_1),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[6]));
    DW02_mult_4_stage  #(33,40)mul1_2(.A(wdata1_2),.B(idata1_2),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[7]));
    DW02_mult_4_stage  #(33,40)mul1_3(.A(wdata1_3),.B(idata1_3),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[8]));
    DW02_mult_4_stage  #(33,40)mul1_4(.A(wdata1_4),.B(idata1_4),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[9]));
    DW02_mult_4_stage  #(33,40)mul2_0(.A(wdata2_0),.B(idata2_0),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[10]));
    DW02_mult_4_stage  #(33,40)mul2_1(.A(wdata2_1),.B(idata2_1),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[11]));
    DW02_mult_4_stage  #(33,40)mul2_2(.A(wdata2_2),.B(idata2_2),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[12]));
    DW02_mult_4_stage  #(33,40)mul2_3(.A(wdata2_3),.B(idata2_3),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[13]));
    DW02_mult_4_stage  #(33,40)mul2_4(.A(wdata2_4),.B(idata2_4),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[14]));
    DW02_mult_4_stage  #(33,40)mul3_0(.A(wdata3_0),.B(idata3_0),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[15]));
    DW02_mult_4_stage  #(33,40)mul3_1(.A(wdata3_1),.B(idata3_1),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[16]));
    DW02_mult_4_stage  #(33,40)mul3_2(.A(wdata3_2),.B(idata3_2),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[17]));
    DW02_mult_4_stage  #(33,40)mul3_3(.A(wdata3_3),.B(idata3_3),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[18]));
    DW02_mult_4_stage  #(33,40)mul3_4(.A(wdata3_4),.B(idata3_4),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[19]));
    DW02_mult_4_stage  #(33,40)mul4_0(.A(wdata4_0),.B(idata4_0),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[20]));
    DW02_mult_4_stage  #(33,40)mul4_1(.A(wdata4_1),.B(idata4_1),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[21]));
    DW02_mult_4_stage  #(33,40)mul4_2(.A(wdata4_2),.B(idata4_2),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[22]));
    DW02_mult_4_stage  #(33,40)mul4_3(.A(wdata4_3),.B(idata4_3),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[23]));
    DW02_mult_4_stage  #(33,40)mul4_4(.A(wdata4_4),.B(idata4_4),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[24]));
    DW02_mult_4_stage  #(33,40)mul5_0(.A(wdata5_0),.B(idata5_0),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[25]));
    DW02_mult_4_stage  #(33,40)mul5_1(.A(wdata5_1),.B(idata5_1),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[26]));
    DW02_mult_4_stage  #(33,40)mul5_2(.A(wdata5_2),.B(idata5_2),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[27]));
    DW02_mult_4_stage  #(33,40)mul5_3(.A(wdata5_3),.B(idata5_3),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[28]));
    DW02_mult_4_stage  #(33,40)mul5_4(.A(wdata5_4),.B(idata5_4),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[29]));
    DW02_mult_4_stage  #(33,40)mul6_0(.A(wdata6_0),.B(idata6_0),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[30]));
    DW02_mult_4_stage  #(33,40)mul6_1(.A(wdata6_1),.B(idata6_1),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[31]));
    DW02_mult_4_stage  #(33,40)mul6_2(.A(wdata6_2),.B(idata6_2),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[32]));
    DW02_mult_4_stage  #(33,40)mul6_3(.A(wdata6_3),.B(idata6_3),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[33]));
    DW02_mult_4_stage  #(33,40)mul6_4(.A(wdata6_4),.B(idata6_4),.TC(1'b1),.CLK(clk),.PRODUCT(multiply[34]));
    
	always @(*) begin
        wdata0_0_d=wdata0_0;
        wdata0_1_d=wdata0_1;
        wdata0_2_d=wdata0_2;
        wdata0_3_d=wdata0_3;
        wdata0_4_d=wdata0_4;
        wdata1_0_d=wdata1_0;
        wdata1_1_d=wdata1_1;
        wdata1_2_d=wdata1_2;
        wdata1_3_d=wdata1_3;
        wdata1_4_d=wdata1_4;
        wdata2_0_d=wdata2_0;
        wdata2_1_d=wdata2_1;
        wdata2_2_d=wdata2_2;
        wdata2_3_d=wdata2_3;
        wdata2_4_d=wdata2_4;
        wdata3_0_d=wdata3_0;
        wdata3_1_d=wdata3_1;
        wdata3_2_d=wdata3_2;
        wdata3_3_d=wdata3_3;
        wdata3_4_d=wdata3_4;
        wdata4_0_d=wdata4_0;
        wdata4_1_d=wdata4_1;
        wdata4_2_d=wdata4_2;
        wdata4_3_d=wdata4_3;
        wdata4_4_d=wdata4_4;
        wdata5_0_d=wdata5_0;
        wdata5_1_d=wdata5_1;
        wdata5_2_d=wdata5_2;
        wdata5_3_d=wdata5_3;
        wdata5_4_d=wdata5_4;
        wdata6_0_d=wdata6_0;
        wdata6_1_d=wdata6_1;
        wdata6_2_d=wdata6_2;
        wdata6_3_d=wdata6_3;
        wdata6_4_d=wdata6_4;
        if (cw) begin
            case(ca)
                0: wdata0_0_d=cd;
                1: wdata0_1_d=cd;
                2: wdata0_2_d=cd;
                3: wdata0_3_d=cd;
                4: wdata0_4_d=cd;
                5: wdata1_0_d=cd;
                6: wdata1_1_d=cd;
                7: wdata1_2_d=cd;
                8: wdata1_3_d=cd;
                9: wdata1_4_d=cd;
                10: wdata2_0_d=cd;
                11: wdata2_1_d=cd;
                12: wdata2_2_d=cd;
                13: wdata2_3_d=cd;
                14: wdata2_4_d=cd;
                15: wdata3_0_d=cd;
                16: wdata3_1_d=cd;
                17: wdata3_2_d=cd;
                18: wdata3_3_d=cd;
                19: wdata3_4_d=cd;
                20: wdata4_0_d=cd;
                21: wdata4_1_d=cd;
                22: wdata4_2_d=cd;
                23: wdata4_3_d=cd;
                24: wdata4_4_d=cd;
                25: wdata5_0_d=cd;
                26: wdata5_1_d=cd;
                27: wdata5_2_d=cd;
                28: wdata5_3_d=cd;
                29: wdata5_4_d=cd;
                30: wdata6_0_d=cd;
                31: wdata6_1_d=cd;
                32: wdata6_2_d=cd;
                33: wdata6_3_d=cd;
                34: wdata6_4_d=cd;
            endcase
        end
        idata0_0_d=samp0_0;
        idata0_1_d=samp0_1;
        idata0_2_d=samp0_2;
        idata0_3_d=samp0_3;
        idata0_4_d=samp0_4;
        idata1_0_d=samp1_0;
        idata1_1_d=samp1_1;
        idata1_2_d=samp1_2;
        idata1_3_d=samp1_3;
        idata1_4_d=samp1_4;
        idata2_0_d=samp2_0;
        idata2_1_d=samp2_1;
        idata2_2_d=samp2_2;
        idata2_3_d=samp2_3;
        idata2_4_d=samp2_4;
        idata3_0_d=samp3_0;
        idata3_1_d=samp3_1;
        idata3_2_d=samp3_2;
        idata3_3_d=samp3_3;
        idata3_4_d=samp3_4;
        idata4_0_d=samp4_0;
        idata4_1_d=samp4_1;
        idata4_2_d=samp4_2;
        idata4_3_d=samp4_3;
        idata4_4_d=samp4_4;
        idata5_0_d=samp5_0;
        idata5_1_d=samp5_1;
        idata5_2_d=samp5_2;
        idata5_3_d=samp5_3;
        idata5_4_d=samp5_4;
        idata6_0_d=samp6_0;
        idata6_1_d=samp6_1;
        idata6_2_d=samp6_2;
        idata6_3_d=samp6_3;
        idata6_4_d=samp6_4;
    end
    always @(*) begin
        mr0_0_d=multiply[0] ;
        mr0_1_d=multiply[1] ;
        mr0_2_d=multiply[2] ;
        mr0_3_d=multiply[3] ;
        mr0_4_d=multiply[4] ;
        mr1_0_d=multiply[5] ;
        mr1_1_d=multiply[6] ;
        mr1_2_d=multiply[7] ;
        mr1_3_d=multiply[8] ;
        mr1_4_d=multiply[9] ;
        mr2_0_d=multiply[10];
        mr2_1_d=multiply[11];
        mr2_2_d=multiply[12];
        mr2_3_d=multiply[13];
        mr2_4_d=multiply[14];
        mr3_0_d=multiply[15];
        mr3_1_d=multiply[16];
        mr3_2_d=multiply[17];
        mr3_3_d=multiply[18];
        mr3_4_d=multiply[19];
        mr4_0_d=multiply[20];
        mr4_1_d=multiply[21];
        mr4_2_d=multiply[22];
        mr4_3_d=multiply[23];
        mr4_4_d=multiply[24];
        mr5_0_d=multiply[25];
        mr5_1_d=multiply[26];
        mr5_2_d=multiply[27];
        mr5_3_d=multiply[28];
        mr5_4_d=multiply[29];
        mr6_0_d=multiply[30];
        mr6_1_d=multiply[31];
        mr6_2_d=multiply[32];
        mr6_3_d=multiply[33];
        mr6_4_d=multiply[34];

        mrsum=sum_d;
        if (mrsum[79]==1'b1) mrsum += 1<<24;
        mrfinal_d= mrsum >>> 25;
    end
	
	always @(posedge clk, posedge reset) begin
		if(reset) begin
			sum_d <= 0;
sum_d_1<=0;
sum_d_2<=0;
 end
		else begin

        sum_d<=mr0_0+mr0_1+mr0_2+mr0_3+mr0_4
        +mr1_0+mr1_1+mr1_2+mr1_3+mr1_4
        +mr2_0+mr2_1+mr2_2+mr2_3+mr2_4+mr3_0+mr3_1+mr3_2+mr3_3+mr3_4
        +mr4_0+mr4_1+mr4_2+mr4_3+mr4_4
        +mr5_0+mr5_1+mr5_2+mr5_3+mr5_4
        +mr6_0+mr6_1+mr6_2+mr6_3+mr6_4;
	
	//sum_d<=sum_d_1+sum_d_2;
		end
	end
    always @(*) begin
        pushs_d=push_samp;
        pusho_d=pushs;
    end
    always @(posedge(clk) or posedge(reset)) begin
        if(reset) begin
            idata0_0 <= 0;
            idata0_1 <= 0;
            idata0_2 <= 0;
            idata0_3 <= 0;
            idata0_4 <= 0;
            idata1_0 <= 0;
            idata1_1 <= 0;
            idata1_2 <= 0;
            idata1_3 <= 0;
            idata1_4 <= 0;
            idata2_0 <= 0;
            idata2_1 <= 0;
            idata2_2 <= 0;
            idata2_3 <= 0;
            idata2_4 <= 0;
            idata3_0 <= 0;
            idata3_1 <= 0;
            idata3_2 <= 0;
            idata3_3 <= 0;
            idata3_4 <= 0;
            idata4_0 <= 0;
            idata4_1 <= 0;
            idata4_2 <= 0;
            idata4_3 <= 0;
            idata4_4 <= 0;
            idata5_0 <= 0;
            idata5_1 <= 0;
            idata5_2 <= 0;
            idata5_3 <= 0;
            idata5_4 <= 0;
            idata6_0 <= 0;
            idata6_1 <= 0;
            idata6_2 <= 0;
            idata6_3 <= 0;
            idata6_4 <= 0;
            wdata0_0 <= 0;
            wdata0_1 <= 0;
            wdata0_2 <= 0;
            wdata0_3 <= 0;
            wdata0_4 <= 0;
            wdata1_0 <= 0;
            wdata1_1 <= 0;
            wdata1_2 <= 0;
            wdata1_3 <= 0;
            wdata1_4 <= 0;
            wdata2_0 <= 0;
            wdata2_1 <= 0;
            wdata2_2 <= 0;
            wdata2_3 <= 0;
            wdata2_4 <= 0;
            wdata3_0 <= 0;
            wdata3_1 <= 0;
            wdata3_2 <= 0;
            wdata3_3 <= 0;
            wdata3_4 <= 0;
            wdata4_0 <= 0;
            wdata4_1 <= 0;
            wdata4_2 <= 0;
            wdata4_3 <= 0;
            wdata4_4 <= 0;
            wdata5_0 <= 0;
            wdata5_1 <= 0;
            wdata5_2 <= 0;
            wdata5_3 <= 0;
            wdata5_4 <= 0;
            wdata6_0 <= 0;
            wdata6_1 <= 0;
            wdata6_2 <= 0;
            wdata6_3 <= 0;
            wdata6_4 <= 0;
            mrfinal <= 0;
            pushs <= 0;
            pusho <= 0;
		{a1,a2,a3} <= 0;

	pushout <= 0;
		a<=0;
		b<=0;
		dout <=0;
		temp<=0;
		
		mr0_0 <=0;
		mr0_1 <=0;
		mr0_2 <=0;
		mr0_3 <=0;
		mr0_4 <=0;
		mr1_0 <=0;
		mr1_1 <=0;
		mr1_2 <=0;
		mr1_3 <=0;
		mr1_4 <=0;
		mr2_0 <=0;
		mr2_1 <=0;
		mr2_2 <=0;
		mr2_3 <=0;
		mr2_4 <=0;
		mr3_0 <=0;
		mr3_1 <=0;
		mr3_2 <=0;
		mr3_3 <=0;
		mr3_4 <=0;
		mr4_0 <=0;
		mr4_1 <=0;
		mr4_2 <=0;
		mr4_3 <=0;
		mr4_4 <=0;
		mr5_0 <=0;
		mr5_1 <=0;
		mr5_2 <=0;
		mr5_3 <=0;
		mr5_4 <=0;
		mr6_0 <=0;
		mr6_1 <=0;
		mr6_2 <=0;
		mr6_3 <=0;
		mr6_4 <=0;
		
		
		
        end else begin
            idata0_0 <= #1 idata0_0_d;
            idata0_1 <= #1 idata0_1_d;
            idata0_2 <= #1 idata0_2_d;
            idata0_3 <= #1 idata0_3_d;
            idata0_4 <= #1 idata0_4_d;
            idata1_0 <= #1 idata1_0_d;
            idata1_1 <= #1 idata1_1_d;
            idata1_2 <= #1 idata1_2_d;
            idata1_3 <= #1 idata1_3_d;
            idata1_4 <= #1 idata1_4_d;
            idata2_0 <= #1 idata2_0_d;
            idata2_1 <= #1 idata2_1_d;
            idata2_2 <= #1 idata2_2_d;
            idata2_3 <= #1 idata2_3_d;
            idata2_4 <= #1 idata2_4_d;
            idata3_0 <= #1 idata3_0_d;
            idata3_1 <= #1 idata3_1_d;
            idata3_2 <= #1 idata3_2_d;
            idata3_3 <= #1 idata3_3_d;
            idata3_4 <= #1 idata3_4_d;
            idata4_0 <= #1 idata4_0_d;
            idata4_1 <= #1 idata4_1_d;
            idata4_2 <= #1 idata4_2_d;
            idata4_3 <= #1 idata4_3_d;
            idata4_4 <= #1 idata4_4_d;
            idata5_0 <= #1 idata5_0_d;
            idata5_1 <= #1 idata5_1_d;
            idata5_2 <= #1 idata5_2_d;
            idata5_3 <= #1 idata5_3_d;
            idata5_4 <= #1 idata5_4_d;
            idata6_0 <= #1 idata6_0_d;
            idata6_1 <= #1 idata6_1_d;
            idata6_2 <= #1 idata6_2_d;
            idata6_3 <= #1 idata6_3_d;
            idata6_4 <= #1 idata6_4_d;
            wdata0_0 <= #1 wdata0_0_d;
            wdata0_1 <= #1 wdata0_1_d;
            wdata0_2 <= #1 wdata0_2_d;
            wdata0_3 <= #1 wdata0_3_d;
            wdata0_4 <= #1 wdata0_4_d;
            wdata1_0 <= #1 wdata1_0_d;
            wdata1_1 <= #1 wdata1_1_d;
            wdata1_2 <= #1 wdata1_2_d;
            wdata1_3 <= #1 wdata1_3_d;
            wdata1_4 <= #1 wdata1_4_d;
            wdata2_0 <= #1 wdata2_0_d;
            wdata2_1 <= #1 wdata2_1_d;
            wdata2_2 <= #1 wdata2_2_d;
            wdata2_3 <= #1 wdata2_3_d;
            wdata2_4 <= #1 wdata2_4_d;
            wdata3_0 <= #1 wdata3_0_d;
            wdata3_1 <= #1 wdata3_1_d;
            wdata3_2 <= #1 wdata3_2_d;
            wdata3_3 <= #1 wdata3_3_d;
            wdata3_4 <= #1 wdata3_4_d;
            wdata4_0 <= #1 wdata4_0_d;
            wdata4_1 <= #1 wdata4_1_d;
            wdata4_2 <= #1 wdata4_2_d;
            wdata4_3 <= #1 wdata4_3_d;
            wdata4_4 <= #1 wdata4_4_d;
            wdata5_0 <= #1 wdata5_0_d;
            wdata5_1 <= #1 wdata5_1_d;
            wdata5_2 <= #1 wdata5_2_d;
            wdata5_3 <= #1 wdata5_3_d;
            wdata5_4 <= #1 wdata5_4_d;
            wdata6_0 <= #1 wdata6_0_d;
            wdata6_1 <= #1 wdata6_1_d;
            wdata6_2 <= #1 wdata6_2_d;
            wdata6_3 <= #1 wdata6_3_d;
            wdata6_4 <= #1 wdata6_4_d;
            mrfinal <= #1 mrfinal_d;
			
			mr0_0<= #1 mr0_0_d;
			mr0_1<= #1 mr0_1_d;
			mr0_2<= #1 mr0_2_d;
			mr0_3<= #1 mr0_3_d;
			mr0_4<= #1 mr0_4_d;
			mr1_0<= #1 mr1_0_d;
			mr1_1<= #1 mr1_1_d;
			mr1_2<= #1 mr1_2_d;
			mr1_3<= #1 mr1_3_d;
			mr1_4<= #1 mr1_4_d;
			mr2_0<= #1 mr2_0_d;
			mr2_1<= #1 mr2_1_d;
			mr2_2<= #1 mr2_2_d;
			mr2_3<= #1 mr2_3_d;
			mr2_4<= #1 mr2_4_d;
			mr3_0<= #1 mr3_0_d;
			mr3_1<= #1 mr3_1_d;
			mr3_2<= #1 mr3_2_d;
			mr3_3<= #1 mr3_3_d;
			mr3_4<= #1 mr3_4_d;
			mr4_0<= #1 mr4_0_d;
			mr4_1<= #1 mr4_1_d;
			mr4_2<= #1 mr4_2_d;
			mr4_3<= #1 mr4_3_d;
			mr4_4<= #1 mr4_4_d;
			mr5_0<= #1 mr5_0_d;
			mr5_1<= #1 mr5_1_d;
			mr5_2<= #1 mr5_2_d;
			mr5_3<= #1 mr5_3_d;
			mr5_4<= #1 mr5_4_d;
			mr6_0<= #1 mr6_0_d;
			mr6_1<= #1 mr6_1_d;
			mr6_2<= #1 mr6_2_d;
			mr6_3<= #1 mr6_3_d;
			mr6_4<= #1 mr6_4_d;
			
            pushs <= #1 pushs_d;
		a1 <= #1 pusho_d;
		a2 <= #1 a1;
		a3 <= #1 a2;
            pusho <= #1 pushs;
	temp <= #1 dout_d;   
	dout <= #1 temp;   
        end
    end

endmodule
`include "myfifo.v"
