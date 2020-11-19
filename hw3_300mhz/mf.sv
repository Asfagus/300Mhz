// EE287 S'20 HW1 code



module mf(input clk,reset,
        input pushin,
        input signed [31:0] din00,
        input signed [31:0] din01,
        input signed [31:0] din02,
        input signed [31:0] din03,
        input signed [31:0] din04,
        input signed [31:0] din05,
        input signed [31:0] din06,
        input signed [31:0] din07,
        input signed [31:0] din08,
        input signed [31:0] din09,
        input signed [31:0] din10,
        input signed [31:0] din11,
        input signed [31:0] din12,
        input signed [31:0] din13,
        input signed [31:0] din14,
        input signed [31:0] din15,
        input signed [31:0] din16,
        input signed [31:0] din17,
        input signed [31:0] din18,
        input signed [31:0] din19,
        input signed [31:0] win00,
        input signed [31:0] win01,
        input signed [31:0] win02,
        input signed [31:0] win03,
        input signed [31:0] win04,
        input signed [31:0] win05,
        input signed [31:0] win06,
        input signed [31:0] win07,
        input signed [31:0] win08,
        input signed [31:0] win09,
        input signed [31:0] win10,
        input signed [31:0] win11,
        input signed [31:0] win12,
        input signed [31:0] win13,
        input signed [31:0] win14,
        input signed [31:0] win15,
        input signed [31:0] win16,
        input signed [31:0] win17,
        input signed [31:0] win18,
        input signed [31:0] win19,
        output pushout,
        output signed [31:0] res);
    reg signed [71:0] sval;
    reg signed [71:0] sval_1,sval_2,sval_3,sval_4, temp,temp1_d,temp2_d,sval_d,temp1,temp2;
    reg signed [71:0] sval_5,sval_6,sval_7,sval_8;
    reg signed [71:0] sval_1_d,sval_2_d,sval_3_d,sval_4_d;
    reg signed [71:0] sval_5_d,sval_6_d,sval_7_d,sval_8_d;
    reg signed [71:0] sum1,sum2,sum3,sum4;
    reg Lpushin_temp,Lpushout_temp,Lpushin_temp_1,Lpushin_temp_2,Lpushin_temp_3,Lpushin_temp_4;
    reg Lpushin_temp_5,Lpushin_temp_6,Lpushin_temp_7,Lpushin_temp_8;
    reg Lpushin,Lpushout,Lpushin1;
    reg signed [31:0] Lres_d_temp;
    reg signed [31:0] Lres,Lres_d;
    reg signed [63:0] mp00;
    reg signed [63:0] mp01;
    reg signed [63:0] mp02;
    reg signed [63:0] mp03;
    reg signed [63:0] mp04;
    reg signed [63:0] mp05;
    reg signed [63:0] mp06;
    reg signed [63:0] mp07;
    reg signed [63:0] mp08;
    reg signed [63:0] mp09;
    reg signed [63:0] mp10;
    reg signed [63:0] mp11;
    reg signed [63:0] mp12;
    reg signed [63:0] mp13;
    reg signed [63:0] mp14;
    reg signed [63:0] mp15;
    reg signed [63:0] mp16;
    reg signed [63:0] mp17;
    reg signed [63:0] mp18;
    reg signed [63:0] mp19;
    reg signed [63:0] mp00_d;
    reg signed [63:0] mp01_d;
    reg signed [63:0] mp02_d;
    reg signed [63:0] mp03_d;
    reg signed [63:0] mp04_d;
    reg signed [63:0] mp05_d;
    reg signed [63:0] mp06_d;
    reg signed [63:0] mp07_d;
    reg signed [63:0] mp08_d;
    reg signed [63:0] mp09_d;
    reg signed [63:0] mp10_d;
    reg signed [63:0] mp11_d;
    reg signed [63:0] mp12_d;
    reg signed [63:0] mp13_d;
    reg signed [63:0] mp14_d;
    reg signed [63:0] mp15_d;
    reg signed [63:0] mp16_d;
    reg signed [63:0] mp17_d;
    reg signed [63:0] mp18_d;
    reg signed [63:0] mp19_d;
	reg signed [31:0] Ldin00;
    reg signed [31:0] Ldin01;
    reg signed [31:0] Ldin02;
    reg signed [31:0] Ldin03;
    reg signed [31:0] Ldin04;
    reg signed [31:0] Ldin05;
    reg signed [31:0] Ldin06;
    reg signed [31:0] Ldin07;
    reg signed [31:0] Ldin08;
    reg signed [31:0] Ldin09;
    reg signed [31:0] Ldin10;
    reg signed [31:0] Ldin11;
    reg signed [31:0] Ldin12;
    reg signed [31:0] Ldin13;
    reg signed [31:0] Ldin14;
    reg signed [31:0] Ldin15;
    reg signed [31:0] Ldin16;
    reg signed [31:0] Ldin17;
    reg signed [31:0] Ldin18;
    reg signed [31:0] Ldin19;
    reg signed [31:0] Lwin00;
    reg signed [31:0] Lwin01;
    reg signed [31:0] Lwin02;
    reg signed [31:0] Lwin03;
    reg signed [31:0] Lwin04;
    reg signed [31:0] Lwin05;
    reg signed [31:0] Lwin06;
    reg signed [31:0] Lwin07;
    reg signed [31:0] Lwin08;
    reg signed [31:0] Lwin09;
    reg signed [31:0] Lwin10;
    reg signed [31:0] Lwin11;
    reg signed [31:0] Lwin12;
    reg signed [31:0] Lwin13;
    reg signed [31:0] Lwin14;
    reg signed [31:0] Lwin15;
    reg signed [31:0] Lwin16;
    reg signed [31:0] Lwin17;
    reg signed [31:0] Lwin18;
    reg signed [31:0] Lwin19;
	assign pushout=Lpushout;
	assign res=Lres;
	DW02_mult_2_stage #(32,32) U0(Ldin00,   Lwin00, 1'b1, clk,   mp00_d );
	DW02_mult_2_stage #(32,32) U1(Ldin01,   Lwin01, 1'b1, clk,   mp01_d );
	DW02_mult_2_stage #(32,32) U2(Ldin02,   Lwin02, 1'b1, clk,   mp02_d );
	DW02_mult_2_stage #(32,32) U3(Ldin03,   Lwin03, 1'b1, clk,   mp03_d );
	DW02_mult_2_stage #(32,32) U4(Ldin04,   Lwin04, 1'b1, clk,   mp04_d );
	DW02_mult_2_stage #(32,32) U5(Ldin05,   Lwin05, 1'b1, clk,   mp05_d );
	DW02_mult_2_stage #(32,32) U6(Ldin06,   Lwin06, 1'b1, clk,   mp06_d );
	DW02_mult_2_stage #(32,32) U7(Ldin07,   Lwin07, 1'b1, clk,   mp07_d );
	DW02_mult_2_stage #(32,32) U8(Ldin08,   Lwin08, 1'b1, clk,   mp08_d );
	DW02_mult_2_stage #(32,32) U9(Ldin09,   Lwin09, 1'b1, clk,   mp09_d );
	DW02_mult_2_stage #(32,32) U10(Ldin10,   Lwin10, 1'b1, clk,  mp10_d );
	DW02_mult_2_stage #(32,32) U11(Ldin11,   Lwin11, 1'b1, clk,  mp11_d );
	DW02_mult_2_stage #(32,32) U12(Ldin12,   Lwin12, 1'b1, clk,  mp12_d );
	DW02_mult_2_stage #(32,32) U13(Ldin13,   Lwin13, 1'b1, clk,  mp13_d );
	DW02_mult_2_stage #(32,32) U14(Ldin14,   Lwin14, 1'b1, clk,  mp14_d );
	DW02_mult_2_stage #(32,32) U15(Ldin15,   Lwin15, 1'b1, clk,  mp15_d );
	DW02_mult_2_stage #(32,32) U16(Ldin16,   Lwin16, 1'b1, clk,  mp16_d );
	DW02_mult_2_stage #(32,32) U17(Ldin17,   Lwin17, 1'b1, clk,  mp17_d );
	DW02_mult_2_stage #(32,32) U18(Ldin18,   Lwin18, 1'b1, clk,  mp18_d );
	DW02_mult_2_stage #(32,32) U19(Ldin19,   Lwin19, 1'b1, clk,  mp19_d );
    always @(*) begin

       /* mp00_d=Ldin00*Lwin00;
        mp01_d=Ldin01*Lwin01;
        mp02_d=Ldin02*Lwin02;
        mp03_d=Ldin03*Lwin03;
        mp04_d=Ldin04*Lwin04;
        mp05_d=Ldin05*Lwin05;
        mp06_d=Ldin06*Lwin06;
        mp07_d=Ldin07*Lwin07;
        mp08_d=Ldin08*Lwin08;
        mp09_d=Ldin09*Lwin09;
        mp10_d=Ldin10*Lwin10;
        mp11_d=Ldin11*Lwin11;
        mp12_d=Ldin12*Lwin12;
        mp13_d=Ldin13*Lwin13;
        mp14_d=Ldin14*Lwin14;
        mp15_d=Ldin15*Lwin15;
        mp16_d=Ldin16*Lwin16;
        mp17_d=Ldin17*Lwin17;
        mp18_d=Ldin18*Lwin18;
        mp19_d=Ldin19*Lwin19;*/
    
	
	sval_1_d=mp00+mp01+mp02;
	sval_2_d=mp03+mp04+mp05;
	sval_3_d=mp06+mp07+mp08;
	sval_4_d=mp09+mp10+mp11;		   
	sval_5_d=mp12+mp13+mp14;
	sval_6_d=mp15+mp16+mp17;
	sval_7_d=mp18+mp19;	
	temp1_d = sval_1+sval_2+sval_3+sval_4;	
	temp2_d = sval_5+sval_6+sval_7;
	sval_d  = temp1+temp2;
	Lres_d = sval >>> 35;

end	
	always @(posedge(clk) or posedge(reset)) begin
	if(reset) begin
		Ldin00<=0;
		Ldin01<=0;
		Ldin02<=0;
		Ldin03<=0;
		Ldin04<=0;
		Ldin05<=0;
		Ldin06<=0;
		Ldin07<=0;
		Ldin08<=0;
		Ldin09<=0;
		Ldin10<=0;
		Ldin11<=0;
		Ldin12<=0;
		Ldin13<=0;
		Ldin14<=0;
		Ldin15<=0;
		Ldin16<=0;
		Ldin17<=0;
		Ldin18<=0;
		Ldin19<=0;
		Lwin00<=0;
		Lwin01<=0;
		Lwin02<=0;
		Lwin03<=0;
		Lwin04<=0;
		Lwin05<=0;
		Lwin06<=0;
		Lwin07<=0;
		Lwin08<=0;
		Lwin09<=0;
		Lwin10<=0;
		Lwin11<=0;
		Lwin12<=0;
		Lwin13<=0;
		Lwin14<=0;
		Lwin15<=0;
		Lwin16<=0;
		Lwin17<=0;
		Lwin18<=0;
		Lwin19<=0;
		Lpushin<=0;
		Lpushout <= 0;
		Lres<=0;
		Lpushin_temp<=0;
		Lpushin_temp_1<=0;
		Lpushin_temp_2<=0;
		Lpushin_temp_3<=0;
		Lpushin_temp_4<=0;
		
		mp00<=0;
		mp01<=0;
		mp02<=0;
		mp03<=0;
		mp04<=0;
		mp05<=0;
		mp06<=0;
		mp07<=0;
		mp08<=0;
		mp09<=0;
		mp10<=0;
		mp11<=0;
		mp12<=0;
		mp13<=0;
		mp14<=0;
		mp15<=0;
		mp16<=0;
		mp17<=0;
		mp18<=0;
		mp19<=0;


		sval_1 <=0;
        sval_2<=0;
        sval_3<=0;
        sval_4<=0;
        sval_5<=0;
        sval_6<=0;
        sval_7<=0;
        temp1<=0;
        temp2<=0;


		sval <=0;
		//temp <=0;
	end else begin
		mp00<= #1 mp00_d;
		mp01<= #1 mp01_d;
		mp02<= #1 mp02_d;
		mp03<= #1 mp03_d;
		mp04<= #1 mp04_d;
		mp05<= #1 mp05_d;
		mp06<= #1 mp06_d;
		mp07<= #1 mp07_d;
		mp08<= #1 mp08_d;
		mp09<= #1 mp09_d;
		mp10<= #1 mp10_d;
		mp11<= #1 mp11_d;
		mp12<= #1 mp12_d;
		mp13<= #1 mp13_d;
		mp14<= #1 mp14_d;
		mp15<= #1 mp15_d;
		mp16<= #1 mp16_d;
		mp17<= #1 mp17_d;
		mp18<= #1 mp18_d;
		mp19<= #1 mp19_d;
		
		Ldin00<= #1 din00;
		Ldin01<= #1 din01;
		Ldin02<= #1 din02;
		Ldin03<= #1 din03;
		Ldin04<= #1 din04;
		Ldin05<= #1 din05;
		Ldin06<= #1 din06;
		Ldin07<= #1 din07;
		Ldin08<= #1 din08;
		Ldin09<= #1 din09;
		Ldin10<= #1 din10;
		Ldin11<= #1 din11;
		Ldin12<= #1 din12;
		Ldin13<= #1 din13;
		Ldin14<= #1 din14;
		Ldin15<= #1 din15;
		Ldin16<= #1 din16;
		Ldin17<= #1 din17;
		Ldin18<= #1 din18;
		Ldin19<= #1 din19;
		Lwin00<= #1 win00;
		Lwin01<= #1 win01;
		Lwin02<= #1 win02;
		Lwin03<= #1 win03;
		Lwin04<= #1 win04;
		Lwin05<= #1 win05;
		Lwin06<= #1 win06;
		Lwin07<= #1 win07;
		Lwin08<= #1 win08;
		Lwin09<= #1 win09;
		Lwin10<= #1 win10;
		Lwin11<= #1 win11;
		Lwin12<= #1 win12;
		Lwin13<= #1 win13;
		Lwin14<= #1 win14;
		Lwin15<= #1 win15;
		Lwin16<= #1 win16;
		Lwin17<= #1 win17;
		Lwin18<= #1 win18;
		Lwin19<= #1 win19;
		
		
		
		sval_1<=sval_1_d;
        sval_2<=sval_2_d;
        sval_3<=sval_3_d;
        sval_4<=sval_4_d;
        sval_5<=sval_5_d;
        sval_6<=sval_6_d;
        sval_7<=sval_7_d;

		
		
		temp1<=temp1_d;
		temp2<=temp2_d;
		
		
		
		
		sval <= #1 sval_d;
		Lres <= #1 Lres_d;

		Lpushin<= #1 pushin;
		Lpushin_temp<= #1 Lpushin;		
		Lpushin_temp_1 <= #1 Lpushin_temp; 
		Lpushin_temp_2 <= #1 Lpushin_temp_1;
		Lpushin_temp_3 <= #1 Lpushin_temp_2;
		Lpushin_temp_4 <= #1 Lpushin_temp_3;
		Lpushout <= #1 Lpushin_temp_4;
    	end // posedge(clk)
	end
endmodule 
