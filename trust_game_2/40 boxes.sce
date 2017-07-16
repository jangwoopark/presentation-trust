scenario = "frame";
scenario_type = fMRI_emulation;
#scenario_type = fMRI;
scan_period = 3000;
response_matching = simple_matching;
no_logfile = false;
sequence_interrupt=false; #default
active_buttons = 2;
button_codes=0,1;
default_font="arial";
default_font_size=30;
default_text_color=255,255,255;
default_background_color=0,0,0;

begin;

text { caption = "+"; font_size = 12; } cross; 
text { caption = "SELECT
AMOUNT
FROM"; } select;
text { caption = "10"; } dollar;
text { caption = "40"; } dollar_40;
text { caption = "SENDING:"; } sending;
text { caption = "KEEPING:"; } keeping;
text { caption = "_"; } dollar_2;
text { caption = "_"; } dollar_3;
box { height = 486; width = 2; color = 255,255,255; } vert;
box { height = 2; width = 142; color = 255,255,255; } horiz;
box { height = 2; width = 4; color = 255,255,255; } divide;
box { height = 42; width = 140; color = 0,0,0; } zero;

picture { text cross; x=0; y=0;
		LOOP $i 40; $t='$i+1';
		box { height = '440/40-2'; width = 140; color = 0,0,0; }"red10_40_$t"; x=0; y='-220+(440/(2*40))+$i*(440/40)';
		ENDLOOP;
		LOOP $i 41;
		box divide; x=68; y='220-$i*(440/40)';
		box divide; x=-68; y='220-$i*(440/40)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_40; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor40;

begin_pcl;

mouse stick = response_manager.get_mouse( 1 ); 
#joystick stick = response_manager.get_joystick( 1 ); 
stick.set_min_max( 1, -1, 1 );
stick.set_min_max( 2, -264, 220 );
#stick.set_saturation( 1, 0.999 );
#stick.set_saturation( 2, 0.999 );
#stick.set_dead_zone( 1, 0.001 ); 
#stick.set_dead_zone( 2, 0.001 );

loop int count = response_manager.total_response_count( 1 )
	until	response_manager.total_response_count( 1 ) > count 
begin 
	array <int> seq10[40] = {-215,	-204,	-193,	-182,	-171,	-160,	-149,	-138,	-127,	-116,	-105,	-94,	-83,	
	-72,	-61,	-50,	-39,	-28,	-17,	-6, 6,	17,	28,	39,	50,	61,
	72,	83,	94,	105,	116,	127,	138,	149,	160,	171,	182,	193,	204,	215};
	stick.poll(); 
	cursor40.set_part_x( 1, stick.x() ); 
	cursor40.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$40"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_40_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$39"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_40_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_40_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$38"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_40_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_40_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$37"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_40_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_40_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$36"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_40_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_40_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$35"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_40_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_40_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$34"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_40_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_40_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$33"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_40_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_40_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$32"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_40_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_40_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$31"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_40_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_40_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$30"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_40_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_40_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$29"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_40_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_40_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$28"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_40_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_40_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$27"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_40_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_40_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$26"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_40_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_40_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$25"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_40_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_40_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$24"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_40_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_40_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$23"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_40_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_40_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$22"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_40_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_40_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$21"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_40_19.set_color(0,0,0);
		end;
		if (stick.y()>seq10[20])  
		then red10_40_20.set_color(255,0,0); 
			dollar_2.set_caption("$20"); dollar_2.redraw(); 
			dollar_3.set_caption("$20"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_40_20.set_color(0,0,0);
		end;
		if (stick.y()>seq10[21])  
		then red10_40_21.set_color(255,0,0); 
			dollar_2.set_caption("$21"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_40_21.set_color(0,0,0);
		end;
		if (stick.y()>seq10[22])  
		then red10_40_22.set_color(255,0,0); 
			dollar_2.set_caption("$22"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[22]) then red10_40_22.set_color(0,0,0);
		end;
		if (stick.y()>seq10[23])  
		then red10_40_23.set_color(255,0,0); 
			dollar_2.set_caption("$23"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[23]) then red10_40_23.set_color(0,0,0);
		end;
		if (stick.y()>seq10[24])  
		then red10_40_24.set_color(255,0,0); 
			dollar_2.set_caption("$24"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[24]) then red10_40_24.set_color(0,0,0);
		end;
		if (stick.y()>seq10[25])  
		then red10_40_25.set_color(255,0,0); 
			dollar_2.set_caption("$25"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[25]) then red10_40_25.set_color(0,0,0);
		end;
		if (stick.y()>seq10[26])  
		then red10_40_26.set_color(255,0,0); 
			dollar_2.set_caption("$26"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[26]) then red10_40_26.set_color(0,0,0);
		end;
		if (stick.y()>seq10[27])  
		then red10_40_27.set_color(255,0,0); 
			dollar_2.set_caption("$27"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[27]) then red10_40_27.set_color(0,0,0);
		end;
		if (stick.y()>seq10[28])  
		then red10_40_28.set_color(255,0,0); 
			dollar_2.set_caption("$28"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[28]) then red10_40_28.set_color(0,0,0);
		end;
		if (stick.y()>seq10[29])  
		then red10_40_29.set_color(255,0,0); 
			dollar_2.set_caption("$29"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[29]) then red10_40_29.set_color(0,0,0);
		end;
		if (stick.y()>seq10[30])  
		then red10_40_30.set_color(255,0,0); 
			dollar_2.set_caption("$30"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[30]) then red10_40_30.set_color(0,0,0);
		end;
		if (stick.y()>seq10[31])  
		then red10_40_31.set_color(255,0,0); 
			dollar_2.set_caption("$31"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[31]) then red10_40_31.set_color(0,0,0);
		end;
		if (stick.y()>seq10[32])  
		then red10_40_32.set_color(255,0,0); 
			dollar_2.set_caption("$32"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[32]) then red10_40_32.set_color(0,0,0);
		end;
		if (stick.y()>seq10[33])  
		then red10_40_33.set_color(255,0,0); 
			dollar_2.set_caption("$33"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[33]) then red10_40_33.set_color(0,0,0);
		end;
		if (stick.y()>seq10[34])  
		then red10_40_34.set_color(255,0,0); 
			dollar_2.set_caption("$34"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[34]) then red10_40_34.set_color(0,0,0);
		end;
		if (stick.y()>seq10[35])  
		then red10_40_35.set_color(255,0,0); 
			dollar_2.set_caption("$35"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[35]) then red10_40_35.set_color(0,0,0);
		end;
		if (stick.y()>seq10[36])  
		then red10_40_36.set_color(255,0,0); 
			dollar_2.set_caption("$36"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[36]) then red10_40_36.set_color(0,0,0);
		end;
		if (stick.y()>seq10[37])  
		then red10_40_37.set_color(255,0,0); 
			dollar_2.set_caption("$37"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[37]) then red10_40_37.set_color(0,0,0);
		end;
		if (stick.y()>seq10[38])  
		then red10_40_38.set_color(255,0,0); 
			dollar_2.set_caption("$38"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[38]) then red10_40_38.set_color(0,0,0);
		end;
		if (stick.y()>seq10[39])  
		then red10_40_39.set_color(255,0,0); 
			dollar_2.set_caption("$39"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[39]) then red10_40_39.set_color(0,0,0);
		end;
		if (stick.y()>seq10[40])  
		then red10_40_40.set_color(255,0,0); 
			dollar_2.set_caption("$40"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[40]) then red10_40_40.set_color(0,0,0);
		end;
		dollar_40.set_caption("$40"); dollar_40.redraw();
		cursor40.present();
end;
