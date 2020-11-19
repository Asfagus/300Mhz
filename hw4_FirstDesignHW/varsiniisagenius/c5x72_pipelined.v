// A homework problem for ee287

//`include "DW02_mult_2_stage.v"

module c5x72(input clk, 
	input reset,
	input [5:0] ca,
       	input [32:0] cd,
	input cw,
	input push_samp,
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
       	output pushout, 
	output signed [44:0] res);
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
    reg signed [79:0] mr0_0; reg signed [72:0] mr0_0_temp; reg signed [79:0] mr0_0_d;
    reg signed [79:0] mr0_1; reg signed [72:0] mr0_1_temp; reg signed [79:0] mr0_1_d;
    reg signed [79:0] mr0_2; reg signed [72:0] mr0_2_temp; reg signed [79:0] mr0_2_d;
    reg signed [79:0] mr0_3; reg signed [72:0] mr0_3_temp; reg signed [79:0] mr0_3_d;
    reg signed [79:0] mr0_4; reg signed [72:0] mr0_4_temp; reg signed [79:0] mr0_4_d;
    reg signed [79:0] mr1_0; reg signed [72:0] mr1_0_temp; reg signed [79:0] mr1_0_d;
    reg signed [79:0] mr1_1; reg signed [72:0] mr1_1_temp; reg signed [79:0] mr1_1_d;
    reg signed [79:0] mr1_2; reg signed [72:0] mr1_2_temp; reg signed [79:0] mr1_2_d;
    reg signed [79:0] mr1_3; reg signed [72:0] mr1_3_temp; reg signed [79:0] mr1_3_d;
    reg signed [79:0] mr1_4; reg signed [72:0] mr1_4_temp; reg signed [79:0] mr1_4_d;
    reg signed [79:0] mr2_0; reg signed [72:0] mr2_0_temp; reg signed [79:0] mr2_0_d;
    reg signed [79:0] mr2_1; reg signed [72:0] mr2_1_temp; reg signed [79:0] mr2_1_d;
    reg signed [79:0] mr2_2; reg signed [72:0] mr2_2_temp; reg signed [79:0] mr2_2_d;
    reg signed [79:0] mr2_3; reg signed [72:0] mr2_3_temp; reg signed [79:0] mr2_3_d;
    reg signed [79:0] mr2_4; reg signed [72:0] mr2_4_temp; reg signed [79:0] mr2_4_d;
    reg signed [79:0] mr3_0; reg signed [72:0] mr3_0_temp; reg signed [79:0] mr3_0_d;
    reg signed [79:0] mr3_1; reg signed [72:0] mr3_1_temp; reg signed [79:0] mr3_1_d;
    reg signed [79:0] mr3_2; reg signed [72:0] mr3_2_temp; reg signed [79:0] mr3_2_d;
    reg signed [79:0] mr3_3; reg signed [72:0] mr3_3_temp; reg signed [79:0] mr3_3_d;
    reg signed [79:0] mr3_4; reg signed [72:0] mr3_4_temp; reg signed [79:0] mr3_4_d;
    reg signed [79:0] mr4_0; reg signed [72:0] mr4_0_temp; reg signed [79:0] mr4_0_d;
    reg signed [79:0] mr4_1; reg signed [72:0] mr4_1_temp; reg signed [79:0] mr4_1_d;
    reg signed [79:0] mr4_2; reg signed [72:0] mr4_2_temp; reg signed [79:0] mr4_2_d;
    reg signed [79:0] mr4_3; reg signed [72:0] mr4_3_temp; reg signed [79:0] mr4_3_d;
    reg signed [79:0] mr4_4; reg signed [72:0] mr4_4_temp; reg signed [79:0] mr4_4_d;
    reg signed [79:0] mr5_0; reg signed [72:0] mr5_0_temp; reg signed [79:0] mr5_0_d;
    reg signed [79:0] mr5_1; reg signed [72:0] mr5_1_temp; reg signed [79:0] mr5_1_d;
    reg signed [79:0] mr5_2; reg signed [72:0] mr5_2_temp; reg signed [79:0] mr5_2_d;
    reg signed [79:0] mr5_3; reg signed [72:0] mr5_3_temp; reg signed [79:0] mr5_3_d;
    reg signed [79:0] mr5_4; reg signed [72:0] mr5_4_temp; reg signed [79:0] mr5_4_d;
    reg signed [79:0] mr6_0; reg signed [72:0] mr6_0_temp; reg signed [79:0] mr6_0_d;
    reg signed [79:0] mr6_1; reg signed [72:0] mr6_1_temp; reg signed [79:0] mr6_1_d;
    reg signed [79:0] mr6_2; reg signed [72:0] mr6_2_temp; reg signed [79:0] mr6_2_d;
    reg signed [79:0] mr6_3; reg signed [72:0] mr6_3_temp; reg signed [79:0] mr6_3_d;
    reg signed [79:0] mr6_4; reg signed [72:0] mr6_4_temp; reg signed [79:0] mr6_4_d;
	reg signed [79:0] mrsum1;
	reg signed [79:0] mrsum2;
	reg signed [79:0] mrsum3;
	reg signed [79:0] mrsum4;
	reg signed [79:0] mrsum5;
	reg signed [79:0] mrsum6;
	reg signed [79:0] mrsum7;
	reg signed [79:0] mrsum8;
	reg signed [79:0] mrsum9;
	reg signed [79:0] mrsum10;
	reg signed [79:0] mrsum11;
	reg signed [79:0] mrsum12;
	reg signed [79:0] mrsum13;
	reg signed [79:0] mrsum14;
	reg signed [79:0] mrsum15;
	reg signed [79:0] mrsum16;
	reg signed [79:0] mrsum17;
	reg signed [79:0] mrsum18;
	reg signed [79:0] mrsum1_d,mrsum2_d,mrsum3_d,mrsum4_d,mrsum5_d,mrsum6_d,mrsum7_d,mrsum8_d,mrsum9_d,mrsum10_d,mrsum11_d,mrsum12_d,mrsum13_d,mrsum14_d,mrsum15_d,mrsum16_d,mrsum17_d,mrsum18_d;
	reg signed [79:0] mrsum1_2,mrsum3_4,mrsum5_6,mrsum7_8,mrsum9_10,mrsum11_12,mrsum13_14,mrsum15_16,mrsum17_18;
	reg signed [79:0] mrsum1_2_d,mrsum3_4_d,mrsum5_6_d,mrsum7_8_d,mrsum9_10_d,mrsum11_12_d,mrsum13_14_d,mrsum15_16_d,mrsum17_18_d;
	reg signed [79:0] mrsum1_2_3_4,mrsum5_6_7_8,mrsum9_10_11_12,mrsum13_14_15_16_17_18;
	reg signed [79:0] mrsum1_2_3_4_d,mrsum5_6_7_8_d,mrsum9_10_11_12_d,mrsum13_14_15_16_17_18_d;
	reg signed [79:0] mrsum1to8,mrsum9to18;
	reg signed [79:0] mrsum1to8_d,mrsum9to18_d;
    reg signed [79:0] mrsum;
    reg signed[44:0] mrfinal_d,mrfinal;
    reg pushs_d,pushs,pusho,pusho_d,pushs1,pushs1_d,pushs2,pushs2_d,pushs3,pushs3_d,pushs4,pushs4_d,pushs5,pushs5_d;
    
    //assign pushout=pusho;
	assign res=fout;

    reg empty,full,rden,wren;
    assign wren = pusho & ~full;
    assign pushout = ~empty;
    assign rden = ~(stopout&pushout) & ~empty;  

    //fifo u (clk,reset,8'b0,8'b0,mrfinal_d,wren,rden,8'b0,8'b0,mrfinal,empty,full);
    fifo f (.clk(clk),.rstp(reset),.writep(wren),.readp(rden),.data_in(mrfinal),.data_out(fout),.emptyp(empty),.fullp(full));

    assign res=mrfinal;
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

    	DW02_mult_2_stage #(33,40) mul0_0 (.A(wdata0_0),.B(idata0_0),.TC(1'b1),.CLK(clk),.PRODUCT(mr0_0_temp));
    	DW02_mult_2_stage #(33,40) mul0_1 (.A(wdata0_1),.B(idata0_1),.TC(1'b1),.CLK(clk),.PRODUCT(mr0_1_temp));
    	DW02_mult_2_stage #(33,40) mul0_2 (.A(wdata0_2),.B(idata0_2),.TC(1'b1),.CLK(clk),.PRODUCT(mr0_2_temp));
    	DW02_mult_2_stage #(33,40) mul0_3 (.A(wdata0_3),.B(idata0_3),.TC(1'b1),.CLK(clk),.PRODUCT(mr0_3_temp));
    	DW02_mult_2_stage #(33,40) mul0_4 (.A(wdata0_4),.B(idata0_4),.TC(1'b1),.CLK(clk),.PRODUCT(mr0_4_temp));
    	DW02_mult_2_stage #(33,40) mul1_0 (.A(wdata1_0),.B(idata1_0),.TC(1'b1),.CLK(clk),.PRODUCT(mr1_0_temp));
    	DW02_mult_2_stage #(33,40) mul1_1 (.A(wdata1_1),.B(idata1_1),.TC(1'b1),.CLK(clk),.PRODUCT(mr1_1_temp));
    	DW02_mult_2_stage #(33,40) mul1_2 (.A(wdata1_2),.B(idata1_2),.TC(1'b1),.CLK(clk),.PRODUCT(mr1_2_temp));
    	DW02_mult_2_stage #(33,40) mul1_3 (.A(wdata1_3),.B(idata1_3),.TC(1'b1),.CLK(clk),.PRODUCT(mr1_3_temp));
    	DW02_mult_2_stage #(33,40) mul1_4 (.A(wdata1_4),.B(idata1_4),.TC(1'b1),.CLK(clk),.PRODUCT(mr1_4_temp));
    	DW02_mult_2_stage #(33,40) mul2_0 (.A(wdata2_0),.B(idata2_0),.TC(1'b1),.CLK(clk),.PRODUCT(mr2_0_temp));
    	DW02_mult_2_stage #(33,40) mul2_1 (.A(wdata2_1),.B(idata2_1),.TC(1'b1),.CLK(clk),.PRODUCT(mr2_1_temp));
    	DW02_mult_2_stage #(33,40) mul2_2 (.A(wdata2_2),.B(idata2_2),.TC(1'b1),.CLK(clk),.PRODUCT(mr2_2_temp));
    	DW02_mult_2_stage #(33,40) mul2_3 (.A(wdata2_3),.B(idata2_3),.TC(1'b1),.CLK(clk),.PRODUCT(mr2_3_temp));
    	DW02_mult_2_stage #(33,40) mul2_4 (.A(wdata2_4),.B(idata2_4),.TC(1'b1),.CLK(clk),.PRODUCT(mr2_4_temp));
    	DW02_mult_2_stage #(33,40) mul3_0 (.A(wdata3_0),.B(idata3_0),.TC(1'b1),.CLK(clk),.PRODUCT(mr3_0_temp));
    	DW02_mult_2_stage #(33,40) mul3_1 (.A(wdata3_1),.B(idata3_1),.TC(1'b1),.CLK(clk),.PRODUCT(mr3_1_temp));
   	DW02_mult_2_stage #(33,40) mul3_2 (.A(wdata3_2),.B(idata3_2),.TC(1'b1),.CLK(clk),.PRODUCT(mr3_2_temp));
   	DW02_mult_2_stage #(33,40) mul3_3 (.A(wdata3_3),.B(idata3_3),.TC(1'b1),.CLK(clk),.PRODUCT(mr3_3_temp));
    	DW02_mult_2_stage #(33,40) mul3_4 (.A(wdata3_4),.B(idata3_4),.TC(1'b1),.CLK(clk),.PRODUCT(mr3_4_temp));
    	DW02_mult_2_stage #(33,40) mul4_0 (.A(wdata4_0),.B(idata4_0),.TC(1'b1),.CLK(clk),.PRODUCT(mr4_0_temp));
    	DW02_mult_2_stage #(33,40) mul4_1 (.A(wdata4_1),.B(idata4_1),.TC(1'b1),.CLK(clk),.PRODUCT(mr4_1_temp));
    	DW02_mult_2_stage #(33,40) mul4_2 (.A(wdata4_2),.B(idata4_2),.TC(1'b1),.CLK(clk),.PRODUCT(mr4_2_temp));
    	DW02_mult_2_stage #(33,40) mul4_3 (.A(wdata4_3),.B(idata4_3),.TC(1'b1),.CLK(clk),.PRODUCT(mr4_3_temp));
    	DW02_mult_2_stage #(33,40) mul4_4 (.A(wdata4_4),.B(idata4_4),.TC(1'b1),.CLK(clk),.PRODUCT(mr4_4_temp));
	DW02_mult_2_stage #(33,40) mul5_0 (.A(wdata5_0),.B(idata5_0),.TC(1'b1),.CLK(clk),.PRODUCT(mr5_0_temp));
	DW02_mult_2_stage #(33,40) mul5_1 (.A(wdata5_1),.B(idata5_1),.TC(1'b1),.CLK(clk),.PRODUCT(mr5_1_temp));
	DW02_mult_2_stage #(33,40) mul5_2 (.A(wdata5_2),.B(idata5_2),.TC(1'b1),.CLK(clk),.PRODUCT(mr5_2_temp));
	DW02_mult_2_stage #(33,40) mul5_3 (.A(wdata5_3),.B(idata5_3),.TC(1'b1),.CLK(clk),.PRODUCT(mr5_3_temp));
	DW02_mult_2_stage #(33,40) mul5_4 (.A(wdata5_4),.B(idata5_4),.TC(1'b1),.CLK(clk),.PRODUCT(mr5_4_temp));
	DW02_mult_2_stage #(33,40) mul6_0 (.A(wdata6_0),.B(idata6_0),.TC(1'b1),.CLK(clk),.PRODUCT(mr6_0_temp));
	DW02_mult_2_stage #(33,40) mul6_1 (.A(wdata6_1),.B(idata6_1),.TC(1'b1),.CLK(clk),.PRODUCT(mr6_1_temp));
	DW02_mult_2_stage #(33,40) mul6_2 (.A(wdata6_2),.B(idata6_2),.TC(1'b1),.CLK(clk),.PRODUCT(mr6_2_temp));
	DW02_mult_2_stage #(33,40) mul6_3 (.A(wdata6_3),.B(idata6_3),.TC(1'b1),.CLK(clk),.PRODUCT(mr6_3_temp));
	DW02_mult_2_stage #(33,40) mul6_4 (.A(wdata6_4),.B(idata6_4),.TC(1'b1),.CLK(clk),.PRODUCT(mr6_4_temp));


	assign mr0_0_d = mr0_0_temp;
    	assign mr0_1_d = mr0_1_temp;
    	assign mr0_2_d = mr0_2_temp;
    	assign mr0_3_d = mr0_3_temp;
    	assign mr0_4_d = mr0_4_temp;
    	assign mr1_0_d = mr1_0_temp;
     	assign mr1_1_d = mr1_1_temp;
  	assign mr1_2_d = mr1_2_temp;
     	assign mr1_3_d = mr1_3_temp;
     	assign mr1_4_d = mr1_4_temp;
     	assign mr2_0_d = mr2_0_temp;
     	assign mr2_1_d = mr2_1_temp;
     	assign mr2_2_d = mr2_2_temp;
     	assign mr2_3_d = mr2_3_temp;
     	assign mr2_4_d = mr2_4_temp;
     	assign mr3_0_d = mr3_0_temp;
     	assign mr3_1_d = mr3_1_temp;
     	assign mr3_2_d = mr3_2_temp;
     	assign mr3_3_d = mr3_3_temp;
     	assign mr3_4_d = mr3_4_temp;
     	assign mr4_0_d = mr4_0_temp;
     	assign mr4_1_d = mr4_1_temp;
     	assign mr4_2_d = mr4_2_temp;
     	assign mr4_3_d = mr4_3_temp;
     	assign mr4_4_d = mr4_4_temp;
     	assign mr5_0_d = mr5_0_temp;
     	assign mr5_1_d = mr5_1_temp;
     	assign mr5_2_d = mr5_2_temp;
     	assign mr5_3_d = mr5_3_temp;
     	assign mr5_4_d = mr5_4_temp;
     	assign mr6_0_d = mr6_0_temp;
     	assign mr6_1_d = mr6_1_temp;
     	assign mr6_2_d = mr6_2_temp;
     	assign mr6_3_d = mr6_3_temp;
     	assign mr6_4_d = mr6_4_temp;

	
	always @(posedge (clk) or posedge (reset)) begin
	if(reset) begin
	mr0_0<=0;
	mr0_1<=0;
	mr0_2<=0;
	mr0_3<=0;
	mr0_4<=0;
	mr1_0<=0;
	mr1_1<=0;
	mr1_2<=0;
	mr1_3<=0;
	mr1_4<=0;
	mr2_0<=0;
	mr2_1<=0;
	mr2_2<=0;
	mr2_3<=0;
	mr2_4<=0;
	mr3_0<=0;
	mr3_1<=0;
	mr3_2<=0;
	mr3_3<=0;
	mr3_4<=0;
	mr4_0<=0;
	mr4_1<=0;
	mr4_2<=0;
	mr4_3<=0;
	mr4_4<=0;
	mr5_0<=0;
	mr5_1<=0;
	mr5_2<=0;
	mr5_3<=0;
	mr5_4<=0;
	mr6_0<=0;
	mr6_1<=0;
	mr6_2<=0;
	mr6_3<=0;
	mr6_4<=0;
	pushs1<=0;
	end
	else begin
	mr0_0<=#1 mr0_0_d;
	mr0_1<=#1 mr0_1_d;
	mr0_2<=#1 mr0_2_d;
	mr0_3<=#1 mr0_3_d;
	mr0_4<=#1 mr0_4_d;
	mr1_0<=#1 mr1_0_d;
	mr1_1<=#1 mr1_1_d;
	mr1_2<=#1 mr1_2_d;
	mr1_3<=#1 mr1_3_d;
	mr1_4<=#1 mr1_4_d;
	mr2_0<=#1 mr2_0_d;
	mr2_1<=#1 mr2_1_d;
	mr2_2<=#1 mr2_2_d;
	mr2_3<=#1 mr2_3_d;
	mr2_4<=#1 mr2_4_d;
	mr3_0<=#1 mr3_0_d;
	mr3_1<=#1 mr3_1_d;
	mr3_2<=#1 mr3_2_d;
	mr3_3<=#1 mr3_3_d;
	mr3_4<=#1 mr3_4_d;
	mr4_0<=#1 mr4_0_d;
	mr4_1<=#1 mr4_1_d;
	mr4_2<=#1 mr4_2_d;
	mr4_3<=#1 mr4_3_d;
	mr4_4<=#1 mr4_4_d;
	mr5_0<=#1 mr5_0_d;
	mr5_1<=#1 mr5_1_d;
	mr5_2<=#1 mr5_2_d;
	mr5_3<=#1 mr5_3_d;
	mr5_4<=#1 mr5_4_d;
	mr6_0<=#1 mr6_0_d;
	mr6_1<=#1 mr6_1_d;
	mr6_2<=#1 mr6_2_d;
	mr6_3<=#1 mr6_3_d;
	mr6_4<=#1 mr6_4_d;
	pushs1<=#1 pushs1_d;
	end	

	end






    always @(*) begin


	 /*mr0_0=wdata0_0*idata0_0;
        mr0_1=wdata0_1*idata0_1;
        mr0_2=wdata0_2*idata0_2;
        mr0_3=wdata0_3*idata0_3;
        mr0_4=wdata0_4*idata0_4;
        mr1_0=wdata1_0*idata1_0;
        mr1_1=wdata1_1*idata1_1;
        mr1_2=wdata1_2*idata1_2;
        mr1_3=wdata1_3*idata1_3;
        mr1_4=wdata1_4*idata1_4;
        mr2_0=wdata2_0*idata2_0;
        mr2_1=wdata2_1*idata2_1;
        mr2_2=wdata2_2*idata2_2;
        mr2_3=wdata2_3*idata2_3;
        mr2_4=wdata2_4*idata2_4;
        mr3_0=wdata3_0*idata3_0;
        mr3_1=wdata3_1*idata3_1;
        mr3_2=wdata3_2*idata3_2;
        mr3_3=wdata3_3*idata3_3;
        mr3_4=wdata3_4*idata3_4;
        mr4_0=wdata4_0*idata4_0;
        mr4_1=wdata4_1*idata4_1;
        mr4_2=wdata4_2*idata4_2;
        mr4_3=wdata4_3*idata4_3;
        mr4_4=wdata4_4*idata4_4;
        mr5_0=wdata5_0*idata5_0;
        mr5_1=wdata5_1*idata5_1;
        mr5_2=wdata5_2*idata5_2;
        mr5_3=wdata5_3*idata5_3;
        mr5_4=wdata5_4*idata5_4;
        mr6_0=wdata6_0*idata6_0;
        mr6_1=wdata6_1*idata6_1;
        mr6_2=wdata6_2*idata6_2;
        mr6_3=wdata6_3*idata6_3;
        mr6_4=wdata6_4*idata6_4;*/


        mrsum1_d =mr0_0+mr0_1;
	mrsum2_d =mr0_2+mr0_3;
	mrsum3_d =mr0_4+mr1_0;
	mrsum4_d =mr1_1+mr1_2;
	mrsum5_d =mr1_3+mr1_4;
        mrsum6_d =mr2_0+mr2_1;
	mrsum7_d =mr2_2+mr2_3;
   	mrsum8_d =mr2_4+mr3_0;
	mrsum9_d =mr3_1+mr3_2;
	mrsum10_d =mr3_3+mr3_4;
        mrsum11_d =mr4_0+mr4_1;
	mrsum12_d =mr4_2+mr4_3;
	mrsum13_d =mr4_4+mr5_0;
	mrsum14_d =mr5_1+mr5_2;
	mrsum15_d =mr5_3+mr5_4;
        mrsum16_d =mr6_0+mr6_1;
	mrsum17_d =mr6_2+mr6_3;
	mrsum18_d =mr6_4;
	
	mrsum1_2_d = mrsum1 + mrsum2;
	mrsum3_4_d = mrsum3 + mrsum4;
 	mrsum5_6_d = mrsum5 + mrsum6;
	mrsum7_8_d = mrsum7 + mrsum8;
	mrsum9_10_d = mrsum9 + mrsum10;
	mrsum11_12_d = mrsum11 + mrsum12;
	mrsum13_14_d = mrsum13 + mrsum14;
	mrsum15_16_d = mrsum15 + mrsum16;
	mrsum17_18_d = mrsum17 + mrsum18;

	mrsum1_2_3_4_d = mrsum1_2 + mrsum3_4;
	mrsum5_6_7_8_d = mrsum5_6 + mrsum7_8;
	mrsum9_10_11_12_d = mrsum9_10 + mrsum11_12;
	mrsum13_14_15_16_17_18_d = mrsum13_14 + mrsum15_16 + mrsum17_18;

	mrsum1to8_d = mrsum1_2_3_4 + mrsum5_6_7_8;
	mrsum9to18_d = mrsum9_10_11_12 + mrsum13_14_15_16_17_18;

	mrsum = mrsum1to8 + mrsum9to18;



      
        if (mrsum[79]==1'b1) mrsum += 1<<24;
        mrfinal_d= mrsum >>> 25;
    end




    always @(*) begin
        pushs_d = push_samp;
	pushs1_d = pushs;
	pushs2_d = pushs1;
	pushs3_d = pushs2;
	pushs4_d = pushs3;
	pushs5_d = pushs4;
	pusho_d = pushs5;
    end

	always @(posedge(clk) or posedge(reset))begin
		if(reset)
		begin
		mrsum2<=0;
		mrsum1<=0;
		mrsum3<=0;
		mrsum4<=0;
		mrsum5<=0;
		mrsum6<=0;
		mrsum7<=0;
		mrsum8<=0;
		mrsum9<=0;
		mrsum10<=0;
		mrsum11<=0;
		mrsum12<=0;
		mrsum13<=0;
		mrsum14<=0;
		mrsum15<=0;
		mrsum16<=0;
		mrsum17<=0;
		mrsum18<=0;
		pushs2<=0;
		end
		else
		begin
		mrsum1<= #1 mrsum1_d;
		mrsum2<= #1 mrsum2_d;
		mrsum3<= #1 mrsum3_d;
		mrsum4<= #1 mrsum4_d;
		mrsum5<= #1 mrsum5_d;
		mrsum6<= #1 mrsum6_d;
		mrsum7<= #1 mrsum7_d;
		mrsum8<= #1 mrsum8_d;
		mrsum9<= #1 mrsum9_d;
		mrsum10<= #1 mrsum10_d;
		mrsum11<= #1 mrsum11_d;
		mrsum12<= #1 mrsum12_d;
		mrsum13<= #1 mrsum13_d;
		mrsum14<= #1 mrsum14_d;
		mrsum15<= #1 mrsum15_d;
		mrsum16<= #1 mrsum16_d;
		mrsum17<= #1 mrsum17_d;
		mrsum18<= #1 mrsum18_d;
		pushs2<= #1 pushs2_d;
		end
	end

	always @(posedge(clk) or posedge(reset))begin
	if(reset)begin
	mrsum1_2<=0;	
	mrsum3_4<=0;
	mrsum5_6<=0;
	mrsum7_8<=0;
	mrsum9_10<=0;
	mrsum11_12<=0;
	mrsum13_14<=0;
	mrsum15_16<=0;
	mrsum17_18<=0;
	pushs3<=0;
	end
	else begin
	mrsum1_2<= #1 mrsum1_2_d;	
	mrsum3_4<= #1 mrsum3_4_d;
	mrsum5_6<= #1 mrsum5_6_d;
	mrsum7_8<= #1 mrsum7_8_d;
	mrsum9_10<= #1 mrsum9_10_d;
	mrsum11_12<= #1 mrsum11_12_d;
	mrsum13_14<= #1 mrsum13_14_d;
	mrsum15_16<= #1 mrsum15_16_d;
	mrsum17_18<= #1 mrsum17_18_d;
	pushs3<= #1 pushs3_d;
	end
	end

    	always @(posedge(clk) or posedge(reset))begin
	if(reset)begin
	mrsum1_2_3_4 <= 0;
	mrsum5_6_7_8 <= 0;
	mrsum9_10_11_12 <= 0;
	mrsum13_14_15_16_17_18 <= 0;
	pushs4<= 0;	
    	end
	else begin
	mrsum1_2_3_4 <= #1 mrsum1_2_3_4_d;
	mrsum5_6_7_8 <= #1 mrsum5_6_7_8_d;
	mrsum9_10_11_12 <= #1 mrsum9_10_11_12_d;
	mrsum13_14_15_16_17_18 <= #1 mrsum13_14_15_16_17_18_d;
	pushs4<= #1 pushs4_d;
	end
	end

    always @(posedge(clk) or posedge(reset))begin
	if(reset)begin
	mrsum1to8 <= 0;
	mrsum9to18 <= 0;
	pushs5<= 0;
	end
	else begin
	mrsum1to8 <= #1 mrsum1to8_d;
	mrsum9to18 <= #1 mrsum9to18_d;
	pushs5<= #1 pushs5_d;
	end
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
            pushs <= #1 pushs_d;
            pusho <= #11 pusho_d;
        end
    end

endmodule
