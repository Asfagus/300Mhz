// AKshits mf.sv


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
    reg signed [71:0] sval,sval_d,temp_1,temp_2,temp_3,temp_4,temp_1_d,temp_2_d,temp_3_d,temp_4_d;
    reg Lpushin,Lpushout;
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
	
reg signed [63:0] sval1;
    reg signed [63:0] sval2;
    reg signed [63:0] sval3;
    reg signed [63:0] sval4;
    reg signed [63:0] sval5;
    reg signed [63:0] sval6;
    reg signed [63:0] sval7;
    reg signed [63:0] sval8;
    reg signed [63:0] sval9;
    reg signed [63:0] sval10;
    reg signed [63:0] sval11;
    reg signed [63:0] sval12;
    reg signed [63:0] sval13;
    reg signed [63:0] sval14;
    reg signed [63:0] sval15;
    reg signed [63:0] sval16;
    reg signed [63:0] sval17;
    reg signed [63:0] sval18;
    reg signed [63:0] sval19;
    reg signed [63:0] sval20;
            

reg inst_TC = 1'b1;

	parameter Lwin_width = 32;
	parameter Ldin_width = 32;

	reg Lpushin_temp1,Lpushin_temp2,Lpushin_temp3,Lpushin_temp4,Lpushin_temp5;

	assign pushout=Lpushout;
        assign res=Lres;


	DW02_mult_2_stage #(Lwin_width, Ldin_width) U1( Ldin00, Lwin00, inst_TC, clk, sval1 ); 
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U2( Ldin01, Lwin01, inst_TC, clk, sval2 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U3( Ldin02, Lwin02, inst_TC, clk, sval3 ); 
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U4( Ldin03, Lwin03, inst_TC, clk, sval4 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U5( Ldin04, Lwin04, inst_TC, clk, sval5 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U6( Ldin05, Lwin05, inst_TC, clk, sval6 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U7( Ldin06, Lwin06, inst_TC, clk, sval7 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U8( Ldin07, Lwin07, inst_TC, clk, sval8 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U9( Ldin08, Lwin08, inst_TC, clk, sval9 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U10( Ldin09, Lwin09, inst_TC, clk, sval10 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U11( Ldin10, Lwin10, inst_TC, clk, sval11 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U12( Ldin11, Lwin11, inst_TC, clk, sval12 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U13( Ldin12, Lwin12, inst_TC, clk, sval13 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U14( Ldin13, Lwin13, inst_TC, clk, sval14 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U15( Ldin14, Lwin14, inst_TC, clk, sval15 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U16( Ldin15, Lwin15, inst_TC, clk, sval16 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U17( Ldin16, Lwin16, inst_TC, clk, sval17 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U18( Ldin17, Lwin17, inst_TC, clk, sval18 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U19( Ldin18, Lwin18, inst_TC, clk, sval19 ); 	
	DW02_mult_2_stage #(Lwin_width, Ldin_width) U20( Ldin19, Lwin19, inst_TC, clk, sval20 );





    always @(*) begin
        /*mp00=Ldin00*Lwin00;
        mp01=Ldin01*Lwin01;
        mp02=Ldin02*Lwin02;
        mp03=Ldin03*Lwin03;
        mp04=Ldin04*Lwin04;
        mp05=Ldin05*Lwin05;
        mp06=Ldin06*Lwin06;
        mp07=Ldin07*Lwin07;
        mp08=Ldin08*Lwin08;
        mp09=Ldin09*Lwin09;
        mp10=Ldin10*Lwin10;
        mp11=Ldin11*Lwin11;
        mp12=Ldin12*Lwin12;
        mp13=Ldin13*Lwin13;
        mp14=Ldin14*Lwin14;
        mp15=Ldin15*Lwin15;
        mp16=Ldin16*Lwin16;
        mp17=Ldin17*Lwin17;
        mp18=Ldin18*Lwin18;
        mp19=Ldin19*Lwin19;*/


	temp_1_d=mp00+mp01+mp02+mp03+mp04;
	temp_2_d=mp05+mp06+mp07+mp08+mp09;
	temp_3_d=mp10+mp11+mp12+mp13+mp14;
        temp_4_d=mp15+mp16+mp17+mp18+mp19;


        sval_d=temp_1+temp_2+temp_3+temp_4;
        Lres_d=sval >>> 35;
    end // always @(*)
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

		mp00 <=0;
	    mp01 <=0;
	    mp02 <=0;
	    mp03 <=0;
	    mp04 <=0;
	    mp05 <=0;
	    mp06 <=0;
	    mp07 <=0;
	    mp08 <=0;
	    mp09 <=0;
	    mp10 <=0;
	    mp11 <=0;
	    mp12 <=0;
	    mp13 <=0;
	    mp14 <=0;
	    mp15 <=0;
	    mp16 <=0;
	    mp17 <=0;
	    mp18 <=0;
	    mp19 <=0;


		temp_1<=0;		
		temp_2<=0;		
		temp_3<=0;		
		temp_4<=0;	


	Lpushin_temp1<=0;
	Lpushin_temp2<=0;
	Lpushin_temp3<=0;
	Lpushin_temp4<=0;

	sval<=0;
            Lpushin<=0;
            Lpushout <= 0;
            Lres<=0;
        end else begin
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


 		mp00<= #1 sval1 ;
	    mp01<= #1 sval2 ;
	    mp02<= #1 sval3 ;
	    mp03<= #1 sval4 ;
	    mp04<= #1 sval5 ;
	    mp05<= #1 sval6 ;
	    mp06<= #1 sval7 ;
	    mp07<= #1 sval8 ;
	    mp08<= #1 sval9 ;
	    mp09<= #1 sval10;
	    mp10<= #1 sval11;
	    mp11<= #1 sval12;
	    mp12<= #1 sval13;
	    mp13<= #1 sval14;
	    mp14<= #1 sval15;
	    mp15<= #1 sval16;
	    mp16<= #1 sval17;
	    mp17<= #1 sval18;
	    mp18<= #1 sval19;
	    mp19<= #1 sval20;

		
		temp_1<=#1 temp_1_d;		
		temp_2<=#1 temp_2_d;		
		temp_3<=#1 temp_3_d;		
		temp_4<=#1 temp_4_d;		



		sval<= #1 sval_d;

            Lres<= #1 Lres_d;


            Lpushin<= #1 pushin;
            Lpushin_temp1<= #1 Lpushin;
            Lpushin_temp2<= #1 Lpushin_temp1;
            Lpushin_temp3<= #1 Lpushin_temp2;
            Lpushin_temp4<= #1 Lpushin_temp3;
            Lpushout <= #1 Lpushin_temp4;
        end
    end // posedge(clk)

endmodule 