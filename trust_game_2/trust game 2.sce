scenario = "trust game";
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

picture { text { caption = 
"YOU ARE PLAYER 1
PLAYER 2 IS A PERSON"; }; x=0; y=0; } p1person;
picture { text { caption =
"YOU ARE PLAYER 1
PLAYER 2 IS A COMPUTER"; }; x=0; y=0; } p1computer;
picture { text { caption = 
"YOU ARE PLAYER 2
PLAYER 1 IS A PERSON"; }; x=0; y=0; } p2person;
picture { text { caption =
"YOU ARE PLAYER 2
PLAYER 1 IS A COMPUTER"; }; x=0; y=0; } p2computer;
picture { text { caption = 
"PLEASE WAIT"; }; x=0; y=0; } wait;
picture { text { caption = 
"COMPUTER DECIDED RETURN"; }; x=0; y=0; } decided;
picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } fix;

# sending

text { caption = "PERSON SENT"; } Person;
text { caption = "COMPUTER SENT"; } Comp;
text { caption = "_"; } selling;
picture { text Comp; x=0; y=0; text selling; x=215; y=0; } Sentco;
picture { text Person; x=0; y=0; text selling; x=215; y=0; } Sentpe;
trial { picture Sentco; duration = 3000;} Sentcomp;
trial { picture Sentpe; duration = 3000;} Sentperson;

# selecting

text { caption = " "; font_size = 12; } cross; 
text { caption = "SELECT
AMOUNT
FROM"; } select;
text { caption = "10"; } dollar_10;
text { caption = "13"; } dollar_13;
text { caption = "16"; } dollar_16;
text { caption = "19"; } dollar_19;
text { caption = "22"; } dollar_22;
text { caption = "25"; } dollar_25;
text { caption = "28"; } dollar_28;
text { caption = "31"; } dollar_31;
text { caption = "34"; } dollar_34;
text { caption = "37"; } dollar_37;
text { caption = "40"; } dollar_40;
text { caption = "SENDING:"; } sending;
text { caption = "KEEPING:"; } keeping;
text { caption = "_"; } dollar_2;
text { caption = "_"; } dollar_3;
box { height = 486; width = 2; color = 255,255,255; } vert;
box { height = 2; width = 142; color = 255,255,255; } horiz;
box { height = 2; width = 4; color = 255,255,255; } divide;
box { height = 42; width = 140; color = 0,0,0; } zero;

# cursors for 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40

picture { text cross; x=0; y=0;
		LOOP $i 10; $t='$i+1';
		box { height = '440/10-2'; width = 140; color = 0,0,0; }"red10_10_$t"; x=0; y='-220+(440/(2*10))+$i*440/10';
		ENDLOOP;
		LOOP $i 11;
		box divide; x=68; y='220-$i*(440/10)';
		box divide; x=-68; y='220-$i*(440/10)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_10; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor10;

picture {text cross; x=0; y=0;
 		LOOP $i 13; $t='$i+1';
		box { height = '440/13-2'; width = 140; color = 0,0,0; }"red10_13_$t"; x=0; y='-220+(440/(2*13))+$i*440/13';
		ENDLOOP;
		LOOP $i 14;
		box divide; x=68; y='220-$i*(440/13)';
		box divide; x=-68; y='220-$i*(440/13)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_13; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor13;

picture { text cross; x=0; y=0;
		LOOP $i 16; $t='$i+1';
		box { height = '440/16-2'; width = 140; color = 0,0,0; }"red10_16_$t"; x=0; y='-220+(440/(2*16))+$i*440/16';
		ENDLOOP;
		LOOP $i 17;
		box divide; x=68; y='220-$i*(440/16)';
		box divide; x=-68; y='220-$i*(440/16)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_16; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor16;

picture { text cross; x=0; y=0;
		LOOP $i 19; $t='$i+1';
		box { height = '440/19-2'; width = 140; color = 0,0,0; }"red10_19_$t"; x=0; y='-220+(440/(2*19))+$i*440/19';
		ENDLOOP;
		LOOP $i 20;
		box divide; x=68; y='220-$i*(440/19)';
		box divide; x=-68; y='220-$i*(440/19)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_19; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor19;

picture { text cross; x=0; y=0;
		LOOP $i 22; $t='$i+1';
		box { height = '440/22-2'; width = 140; color = 0,0,0; }"red10_22_$t"; x=0; y='-220+(440/(2*22))+$i*440/22';
		ENDLOOP;
		LOOP $i 23;
		box divide; x=68; y='220-$i*(440/22)';
		box divide; x=-68; y='220-$i*(440/22)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_22; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor22;

picture { text cross; x=0; y=0;
		LOOP $i 25; $t='$i+1';
		box { height = '440/25-2'; width = 140; color = 0,0,0; }"red10_25_$t"; x=0; y='-220+(440/(2*25))+$i*440/25';
		ENDLOOP;
		LOOP $i 26;
		box divide; x=68; y='220-$i*(440/25)';
		box divide; x=-68; y='220-$i*(440/25)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_25; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor25;

picture { text cross; x=0; y=0;
		LOOP $i 28; $t='$i+1';
		box { height = '440/28-2'; width = 140; color = 0,0,0; }"red10_28_$t"; x=0; y='-220+(440/(2*28))+$i*440/28';
		ENDLOOP;
		LOOP $i 29;
		box divide; x=68; y='220-$i*(440/28)';
		box divide; x=-68; y='220-$i*(440/28)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_28; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor28;

picture { text cross; x=0; y=0;
		LOOP $i 31; $t='$i+1';
		box { height = '440/31-2'; width = 140; color = 0,0,0; }"red10_31_$t"; x=0; y='-220+(440/(2*31))+$i*440/31';
		ENDLOOP;
		LOOP $i 32;
		box divide; x=68; y='220-$i*(440/31)';
		box divide; x=-68; y='220-$i*(440/31)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_31; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor31;

picture { text cross; x=0; y=0;
		LOOP $i 34; $t='$i+1';
		box { height = '440/34-2'; width = 140; color = 0,0,0; }"red10_34_$t"; x=0; y='-220+(440/(2*34))+$i*440/34';
		ENDLOOP;
		LOOP $i 35;
		box divide; x=68; y='220-$i*(440/34)';
		box divide; x=-68; y='220-$i*(440/34)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_34; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor34;

picture { text cross; x=0; y=0;
		LOOP $i 37; $t='$i+1';
		box { height = '440/37-2'; width = 140; color = 0,0,0; }"red10_37_$t"; x=0; y='-220+(440/(2*37))+$i*440/37';
		ENDLOOP;
		LOOP $i 38;
		box divide; x=68; y='220-$i*(440/37)';
		box divide; x=-68; y='220-$i*(440/37)';
		ENDLOOP;
		text select; x = -250; y = 0;
		text dollar_37; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		} cursor37;

picture { text cross; x=0; y=0;
		LOOP $i 40; $t='$i+1';
		box { height = '440/40-2'; width = 140; color = 0,0,0; }"red10_40_$t"; x=0; y='-220+(440/(2*40))+$i*440/40';
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
			 
trial { picture p1person; duration = 3000;} p1vsperson;
trial { picture p1computer; duration = 3000;} p1vscomputer;
trial { picture p2person; duration = 3000;} p2vsperson;
trial { picture p2computer; duration = 3000;} p2vscomputer;
trial { picture wait; duration = 6000;} waiting;
trial { picture decided; duration = 3000;} decision;
trial { picture fix; duration = 15000;} fixing;

begin_pcl;

mouse stick = response_manager.get_mouse( 1 );
#joystick stick = response_manager.get_joystick( 1 ); 
stick.set_min_max( 1, -1, 1 );
stick.set_min_max( 2, -264, 220 );
#stick.set_saturation( 1, 0.999 );
#stick.set_saturation( 2, 0.999 );
#stick.set_dead_zone( 1, 0.001 ); 
#stick.set_dead_zone( 2, 0.001 );

sub box10 (int duration10)
begin 
	loop int end_time = clock.time()  + duration10
   until clock.time() >= end_time
	begin
	array <int> seq10[10] = {-220, -176, -132, -88, -44, 0, 44, 88, 132, 176};
	stick.poll(); 
	cursor10.set_part_x( 1, stick.x() ); 
	cursor10.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_10_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_10_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_10_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_10_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_10_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_10_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_10_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_10_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_10_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_10_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_10_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_10_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_10_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_10_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_10_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_10_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_10_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_10_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_10_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_10_10.set_color(0,0,0);
		end;
		dollar_10.set_caption("$10"); dollar_10.redraw();
		cursor10.present();
	end;
end;

sub box13 (int duration13)
begin
	loop int end_time = clock.time()  + duration13
   until clock.time() >= end_time
	begin
	array <int> seq10[13] = {-203,	-169,	-135,	-102,	-68,	-34,	0,	34,	68,	102,	135,	169,	203};
	stick.poll(); 
	cursor13.set_part_x( 1, stick.x() ); 
	cursor13.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_13_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_13_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_13_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_13_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_13_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_13_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_13_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_13_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_13_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_13_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_13_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_13_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_13_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_13_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_13_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_13_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_13_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_13_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_13_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_13_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_13_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_13_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_13_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_13_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_13_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_13_13.set_color(0,0,0);
		end;
		dollar_13.set_caption("$13"); dollar_13.redraw();
		cursor13.present();
	end;
end;

sub box16 (int duration16)
begin
	loop int end_time = clock.time()  + duration16
   until clock.time() >= end_time
	begin
	array <int> seq10[16] = {-206,	-179,	-151,	-124,	-96,	-69,	-41,	-14,	14,	41,	69,	96,	124,	151,	179,	206};
	stick.poll(); 
	cursor16.set_part_x( 1, stick.x() ); 
	cursor16.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_16_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_16_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_16_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_16_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_16_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_16_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_16_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_16_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_16_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_16_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_16_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_16_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_16_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_16_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_16_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_16_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_16_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_16_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_16_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_16_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_16_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_16_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_16_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_16_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_16_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_16_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_16_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_16_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_16_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_16_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_16_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_16_16.set_color(0,0,0);
		end;
		dollar_16.set_caption("$16"); dollar_16.redraw();
		cursor16.present();
	end;
end;

sub box19 (int duration19)
begin
	loop int end_time = clock.time()  + duration19
   until clock.time() >= end_time
	begin
	array <int> seq10[19] = {-208,	-185,	-162,	-139,	-116,	-93,	-69,	-46,	-23,	
	0,	23,	46,	69,	93,	116,	139,	162,	185,	208};
	stick.poll(); 
	cursor19.set_part_x( 1, stick.x() ); 
	cursor19.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_19_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_19_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_19_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_19_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_19_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_19_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_19_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_19_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_19_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_19_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_19_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_19_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_19_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_19_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_19_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_19_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_19_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_19_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_19_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_19_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_19_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_19_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_19_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_19_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_19_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_19_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_19_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_19_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_19_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_19_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_19_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_19_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_19_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_19_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_19_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_19_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_19_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_19_19.set_color(0,0,0);
		end;
		dollar_19.set_caption("$19"); dollar_19.redraw();
		cursor19.present();
	end;
end;

sub box22 (int duration22)
begin
	loop int end_time = clock.time()  + duration22
   until clock.time() >= end_time
	begin
	array <int> seq10[22] = {-210,	-190,	-170,	-150,	-130,	-110,	-90,	-70,	-50,	-30,	-10,	
	10,	30,	50,	70,	90,	110,	130,	150,	170,	190,	210};
	stick.poll(); 
	cursor22.set_part_x( 1, stick.x() ); 
	cursor22.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$22"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_22_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$21"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_22_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_22_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$20"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_22_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_22_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_22_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_22_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_22_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_22_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_22_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_22_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_22_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_22_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_22_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_22_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_22_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_22_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_22_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_22_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_22_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_22_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_22_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_22_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_22_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_22_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_22_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_22_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_22_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_22_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_22_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_22_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_22_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_22_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_22_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_22_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_22_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_22_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_22_19.set_color(0,0,0);
		end;
		if (stick.y()>seq10[20])  
		then red10_22_20.set_color(255,0,0); 
			dollar_2.set_caption("$20"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_22_20.set_color(0,0,0);
		end;
		if (stick.y()>seq10[21])  
		then red10_22_21.set_color(255,0,0); 
			dollar_2.set_caption("$21"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_22_21.set_color(0,0,0);
		end;
		if (stick.y()>seq10[22])  
		then red10_22_22.set_color(255,0,0); 
			dollar_2.set_caption("$22"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[22]) then red10_22_22.set_color(0,0,0);
		end;
		dollar_22.set_caption("$22"); dollar_22.redraw();
		cursor22.present();
	end;
end;

sub box25 (int duration25)
begin
	loop int end_time = clock.time()  + duration25
   until clock.time() >= end_time
	begin
	array <int> seq10[25] = {-211,	-194,	-176,	-158,	-141,	-123,	-106,	-88,	-70,	-53,	-35,	-18,	
	0,	18,	35,	53,	70,	88,	106,	123,	141,	158,	176,	194,	211};
	stick.poll(); 
	cursor25.set_part_x( 1, stick.x() ); 
	cursor25.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$25"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_25_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$24"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_25_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_25_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$23"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_25_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_25_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$22"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_25_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_25_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$21"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_25_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_25_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$20"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_25_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_25_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_25_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_25_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_25_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_25_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_25_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_25_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_25_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_25_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_25_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_25_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_25_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_25_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_25_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_25_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_25_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_25_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_25_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_25_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_25_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_25_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_25_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_25_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_25_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_25_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_25_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_25_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_25_19.set_color(0,0,0);
		end;
		if (stick.y()>seq10[20])  
		then red10_25_20.set_color(255,0,0); 
			dollar_2.set_caption("$20"); dollar_2.redraw(); 
			dollar_3.set_caption("$25"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_25_20.set_color(0,0,0);
		end;
		if (stick.y()>seq10[21])  
		then red10_25_21.set_color(255,0,0); 
			dollar_2.set_caption("$21"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_25_21.set_color(0,0,0);
		end;
		if (stick.y()>seq10[22])  
		then red10_25_22.set_color(255,0,0); 
			dollar_2.set_caption("$22"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[22]) then red10_25_22.set_color(0,0,0);
		end;
		if (stick.y()>seq10[23])  
		then red10_25_23.set_color(255,0,0); 
			dollar_2.set_caption("$23"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_25_23.set_color(0,0,0);
		end;
		if (stick.y()>seq10[24])  
		then red10_25_24.set_color(255,0,0); 
			dollar_2.set_caption("$24"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_25_24.set_color(0,0,0);
		end;
		if (stick.y()>seq10[25])  
		then red10_25_25.set_color(255,0,0); 
			dollar_2.set_caption("$25"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[25]) then red10_25_25.set_color(0,0,0);
		end;
		dollar_25.set_caption("$25"); dollar_25.redraw();
		cursor25.present();
	end;
end;

sub box28 (int duration28)
begin
	loop int end_time = clock.time()  + duration28
   until clock.time() >= end_time
	begin
	array <int> seq10[28] = {-212,	-196,	-181,	-165,	-149,	-134,	-118,	-102,	-86,	-71,	-55,	-39,	-24,	-8,	
	8,	24,	39,	55,	71,	86,	102,	118,	134,	149,	165,	181,	196,	212};
	stick.poll(); 
	cursor28.set_part_x( 1, stick.x() ); 
	cursor28.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$28"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_28_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$27"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_28_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_28_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$26"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_28_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_28_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$25"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_28_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_28_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$24"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_28_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_28_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$23"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_28_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_28_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$22"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_28_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_28_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$21"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_28_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_28_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$20"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_28_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_28_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_28_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_28_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_28_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_28_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_28_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_28_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_28_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_28_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_28_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_28_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_28_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_28_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_28_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_28_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_28_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_28_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_28_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_28_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_28_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_28_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_28_19.set_color(0,0,0);
		end;
		if (stick.y()>seq10[20])  
		then red10_28_20.set_color(255,0,0); 
			dollar_2.set_caption("$20"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_28_20.set_color(0,0,0);
		end;
		if (stick.y()>seq10[21])  
		then red10_28_21.set_color(255,0,0); 
			dollar_2.set_caption("$21"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_28_21.set_color(0,0,0);
		end;
		if (stick.y()>seq10[22])  
		then red10_28_22.set_color(255,0,0); 
			dollar_2.set_caption("$22"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[22]) then red10_28_22.set_color(0,0,0);
		end;
		if (stick.y()>seq10[23])  
		then red10_28_23.set_color(255,0,0); 
			dollar_2.set_caption("$23"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[23]) then red10_28_23.set_color(0,0,0);
		end;
		if (stick.y()>seq10[24])  
		then red10_28_24.set_color(255,0,0); 
			dollar_2.set_caption("$24"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[24]) then red10_28_24.set_color(0,0,0);
		end;
		if (stick.y()>seq10[25])  
		then red10_28_25.set_color(255,0,0); 
			dollar_2.set_caption("$25"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[25]) then red10_28_25.set_color(0,0,0);
		end;
		if (stick.y()>seq10[26])  
		then red10_28_26.set_color(255,0,0); 
			dollar_2.set_caption("$26"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[26]) then red10_28_26.set_color(0,0,0);
		end;
		if (stick.y()>seq10[27])  
		then red10_28_27.set_color(255,0,0); 
			dollar_2.set_caption("$27"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[27]) then red10_28_27.set_color(0,0,0);
		end;
		if (stick.y()>seq10[28])  
		then red10_28_28.set_color(255,0,0); 
			dollar_2.set_caption("$28"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[28]) then red10_28_28.set_color(0,0,0);
		end;
		dollar_28.set_caption("$28"); dollar_28.redraw();
		cursor28.present();
	end;
end;

sub box31 (int duration31)
begin
	loop int end_time = clock.time()  + duration31
   until clock.time() >= end_time
	begin
	array <int> seq10[31] = {-213,	-199,	-185,	-170,	-156,	-142,	-128,	-114,	-99,	-85,	-71,	-57,	-43,	-28,	-14,	
	0,	14,	28,	43,	57,	71,	85,	99,	114,	128,	142,	156,	170,	185,	199,	213};
	stick.poll(); 
	cursor31.set_part_x( 1, stick.x() ); 
	cursor31.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$31"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_31_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$30"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_31_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_31_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$29"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_31_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_31_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$28"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_31_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_31_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$27"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_31_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_31_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$26"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_31_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_31_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$25"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_31_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_31_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$24"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_31_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_31_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$23"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_31_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_31_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$22"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_31_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_31_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$21"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_31_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_31_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$20"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_31_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_31_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_31_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_31_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_31_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_31_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_31_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_31_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_31_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_31_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_31_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_31_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_31_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_31_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_31_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_31_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_31_19.set_color(0,0,0);
		end;
		if (stick.y()>seq10[20])  
		then red10_31_20.set_color(255,0,0); 
			dollar_2.set_caption("$20"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_31_20.set_color(0,0,0);
		end;
		if (stick.y()>seq10[21])  
		then red10_31_21.set_color(255,0,0); 
			dollar_2.set_caption("$21"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_31_21.set_color(0,0,0);
		end;
		if (stick.y()>seq10[22])  
		then red10_31_22.set_color(255,0,0); 
			dollar_2.set_caption("$22"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[22]) then red10_31_22.set_color(0,0,0);
		end;
		if (stick.y()>seq10[23])  
		then red10_31_23.set_color(255,0,0); 
			dollar_2.set_caption("$23"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_31_23.set_color(0,0,0);
		end;
		if (stick.y()>seq10[24])  
		then red10_31_24.set_color(255,0,0); 
			dollar_2.set_caption("$24"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_31_24.set_color(0,0,0);
		end;
		if (stick.y()>seq10[25])  
		then red10_31_25.set_color(255,0,0); 
			dollar_2.set_caption("$25"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[25]) then red10_31_25.set_color(0,0,0);
		end;
		if (stick.y()>seq10[26])  
		then red10_31_26.set_color(255,0,0); 
			dollar_2.set_caption("$26"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[26]) then red10_31_26.set_color(0,0,0);
		end;
		if (stick.y()>seq10[27])  
		then red10_31_27.set_color(255,0,0); 
			dollar_2.set_caption("$27"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[27]) then red10_31_27.set_color(0,0,0);
		end;
		if (stick.y()>seq10[28])  
		then red10_31_28.set_color(255,0,0); 
			dollar_2.set_caption("$28"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[28]) then red10_31_28.set_color(0,0,0);
		end;
		if (stick.y()>seq10[29])  
		then red10_31_29.set_color(255,0,0); 
			dollar_2.set_caption("$29"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[29]) then red10_31_29.set_color(0,0,0);
		end;
		if (stick.y()>seq10[30])  
		then red10_31_30.set_color(255,0,0); 
			dollar_2.set_caption("$30"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[30]) then red10_31_30.set_color(0,0,0);
		end;
		if (stick.y()>seq10[31])  
		then red10_31_31.set_color(255,0,0); 
			dollar_2.set_caption("$31"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[31]) then red10_31_31.set_color(0,0,0);
		end;
		dollar_31.set_caption("$31"); dollar_31.redraw();
		cursor31.present();
	end;
end;

sub box34 (int duration34)
begin
	loop int end_time = clock.time()  + duration34
   until clock.time() >= end_time
	begin
	array <int> seq10[34] = {-214,	-201,	-188,	-175,	-162,	-149,	-136,	-123,	-110,	-97,	-84,	-71,	-58,	-45,	-32,	-19,	-6	,
	6,	19,	32,	45,	58,	71,	84,	97,	110,	123,	136,	149,	162,	175,	188,	201,	214};
	stick.poll(); 
	cursor34.set_part_x( 1, stick.x() ); 
	cursor34.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$34"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_34_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$33"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_34_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_34_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$32"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_34_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_34_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$31"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_34_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_34_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$30"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_34_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_34_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$29"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_34_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_34_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$28"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_34_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_34_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$27"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_34_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_34_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$26"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_34_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_34_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$25"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_34_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_34_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$24"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_34_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_34_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$23"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_34_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_34_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$22"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_34_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_34_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("$21"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_34_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_34_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$20"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_34_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_34_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_34_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_34_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_34_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_34_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_34_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_34_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_34_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_34_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_34_19.set_color(0,0,0);
		end;
		if (stick.y()>seq10[20])  
		then red10_34_20.set_color(255,0,0); 
			dollar_2.set_caption("$20"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_34_20.set_color(0,0,0);
		end;
		if (stick.y()>seq10[21])  
		then red10_34_21.set_color(255,0,0); 
			dollar_2.set_caption("$21"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_34_21.set_color(0,0,0);
		end;
		if (stick.y()>seq10[22])  
		then red10_34_22.set_color(255,0,0); 
			dollar_2.set_caption("$22"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[22]) then red10_34_22.set_color(0,0,0);
		end;
		if (stick.y()>seq10[23])  
		then red10_34_23.set_color(255,0,0); 
			dollar_2.set_caption("$23"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_34_23.set_color(0,0,0);
		end;
		if (stick.y()>seq10[24])  
		then red10_34_24.set_color(255,0,0); 
			dollar_2.set_caption("$24"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_34_24.set_color(0,0,0);
		end;
		if (stick.y()>seq10[25])  
		then red10_34_25.set_color(255,0,0); 
			dollar_2.set_caption("$25"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[25]) then red10_34_25.set_color(0,0,0);
		end;
		if (stick.y()>seq10[26])  
		then red10_34_26.set_color(255,0,0); 
			dollar_2.set_caption("$26"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[26]) then red10_34_26.set_color(0,0,0);
		end;
		if (stick.y()>seq10[27])  
		then red10_34_27.set_color(255,0,0); 
			dollar_2.set_caption("$27"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[27]) then red10_34_27.set_color(0,0,0);
		end;
		if (stick.y()>seq10[28])  
		then red10_34_28.set_color(255,0,0); 
			dollar_2.set_caption("$28"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[28]) then red10_34_28.set_color(0,0,0);
		end;
		if (stick.y()>seq10[29])  
		then red10_34_29.set_color(255,0,0); 
			dollar_2.set_caption("$29"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[29]) then red10_34_29.set_color(0,0,0);
		end;
		if (stick.y()>seq10[30])  
		then red10_34_30.set_color(255,0,0); 
			dollar_2.set_caption("$30"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[30]) then red10_34_30.set_color(0,0,0);
		end;
		if (stick.y()>seq10[31])  
		then red10_34_31.set_color(255,0,0); 
			dollar_2.set_caption("$31"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[31]) then red10_34_31.set_color(0,0,0);
		end;
		if (stick.y()>seq10[32])  
		then red10_34_32.set_color(255,0,0); 
			dollar_2.set_caption("$32"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[32]) then red10_34_32.set_color(0,0,0);
		end;
		if (stick.y()>seq10[33])  
		then red10_34_33.set_color(255,0,0); 
			dollar_2.set_caption("$33"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[33]) then red10_34_33.set_color(0,0,0);
		end;
		if (stick.y()>seq10[34])  
		then red10_34_34.set_color(255,0,0); 
			dollar_2.set_caption("$34"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[34]) then red10_34_34.set_color(0,0,0);
		end;
		dollar_34.set_caption("$34"); dollar_34.redraw();
		cursor34.present();
	end;
end;

sub box37 (int duration37)
begin
	loop int end_time = clock.time()  + duration37
   until clock.time() >= end_time
	begin
	array <int> seq10[37] = {-214,	-202,	-190,	-178,	-166,	-155,	-143,	-131,	-119,	-107,	-95,	-83,	
	-71,	-59,	-48,	-36,	-24,	-12,	0,	12,	24,	36,	48,	59,	
	71,	83,	95,	107,	119,	131,	143,	155,	166,	178,	190,	202,	214};
	stick.poll(); 
	cursor37.set_part_x( 1, stick.x() ); 
	cursor37.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("$0"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>seq10[1]) 
		then red10_37_1.set_color(255,0,0); 
			dollar_2.set_caption("$1"); dollar_2.redraw(); 
			dollar_3.set_caption("$36"); dollar_3.redraw();
		elseif (stick.y()<seq10[1]) then red10_37_1.set_color(0,0,0);
		end;
		if (stick.y()>seq10[2]) 
		then red10_37_2.set_color(255,0,0); 
			dollar_2.set_caption("$2"); dollar_2.redraw(); 
			dollar_3.set_caption("$35"); dollar_3.redraw();
		elseif (stick.y()<seq10[2]) then red10_37_2.set_color(0,0,0);
		end;
		if (stick.y()>seq10[3])  
		then red10_37_3.set_color(255,0,0); 
			dollar_2.set_caption("$3"); dollar_2.redraw(); 
			dollar_3.set_caption("$34"); dollar_3.redraw();
		elseif (stick.y()<seq10[3]) then red10_37_3.set_color(0,0,0);
		end;
		if (stick.y()>seq10[4])  
		then red10_37_4.set_color(255,0,0); 
			dollar_2.set_caption("$4"); dollar_2.redraw(); 
			dollar_3.set_caption("$33"); dollar_3.redraw();
		elseif (stick.y()<seq10[4]) then red10_37_4.set_color(0,0,0);
		end;
		if (stick.y()>seq10[5])  
		then red10_37_5.set_color(255,0,0); 
			dollar_2.set_caption("$5"); dollar_2.redraw(); 
			dollar_3.set_caption("$32"); dollar_3.redraw();
		elseif (stick.y()<seq10[5]) then red10_37_5.set_color(0,0,0);
		end;
		if (stick.y()>seq10[6])  
		then red10_37_6.set_color(255,0,0); 
			dollar_2.set_caption("$6"); dollar_2.redraw(); 
			dollar_3.set_caption("$31"); dollar_3.redraw();
		elseif (stick.y()<seq10[6]) then red10_37_6.set_color(0,0,0);
		end;
		if (stick.y()>seq10[7])  
		then red10_37_7.set_color(255,0,0); 
			dollar_2.set_caption("$7"); dollar_2.redraw(); 
			dollar_3.set_caption("$30"); dollar_3.redraw();
		elseif (stick.y()<seq10[7]) then red10_37_7.set_color(0,0,0);
		end;
		if (stick.y()>seq10[8])  
		then red10_37_8.set_color(255,0,0); 
			dollar_2.set_caption("$8"); dollar_2.redraw(); 
			dollar_3.set_caption("$29"); dollar_3.redraw();
		elseif (stick.y()<seq10[8]) then red10_37_8.set_color(0,0,0);
		end;
		if (stick.y()>seq10[9])  
		then red10_37_9.set_color(255,0,0); 
			dollar_2.set_caption("$9"); dollar_2.redraw(); 
			dollar_3.set_caption("$28"); dollar_3.redraw();
		elseif (stick.y()<seq10[9]) then red10_37_9.set_color(0,0,0);
		end;
		if (stick.y()>seq10[10])  
		then red10_37_10.set_color(255,0,0); 
			dollar_2.set_caption("$10"); dollar_2.redraw(); 
			dollar_3.set_caption("$27"); dollar_3.redraw();
		elseif (stick.y()<seq10[10]) then red10_37_10.set_color(0,0,0);
		end;
		if (stick.y()>seq10[11])  
		then red10_37_11.set_color(255,0,0); 
			dollar_2.set_caption("$11"); dollar_2.redraw(); 
			dollar_3.set_caption("$26"); dollar_3.redraw();
		elseif (stick.y()<seq10[11]) then red10_37_11.set_color(0,0,0);
		end;
		if (stick.y()>seq10[12])  
		then red10_37_12.set_color(255,0,0); 
			dollar_2.set_caption("$12"); dollar_2.redraw(); 
			dollar_3.set_caption("$25"); dollar_3.redraw();
		elseif (stick.y()<seq10[12]) then red10_37_12.set_color(0,0,0);
		end;
		if (stick.y()>seq10[13])  
		then red10_37_13.set_color(255,0,0); 
			dollar_2.set_caption("$13"); dollar_2.redraw(); 
			dollar_3.set_caption("24"); dollar_3.redraw();
		elseif (stick.y()<seq10[13]) then red10_37_13.set_color(0,0,0);
		end;
		if (stick.y()>seq10[14])  
		then red10_37_14.set_color(255,0,0); 
			dollar_2.set_caption("$14"); dollar_2.redraw(); 
			dollar_3.set_caption("$23"); dollar_3.redraw();
		elseif (stick.y()<seq10[14]) then red10_37_14.set_color(0,0,0);
		end;
		if (stick.y()>seq10[15])  
		then red10_37_15.set_color(255,0,0); 
			dollar_2.set_caption("$15"); dollar_2.redraw(); 
			dollar_3.set_caption("$22"); dollar_3.redraw();
		elseif (stick.y()<seq10[15]) then red10_37_15.set_color(0,0,0);
		end;
		if (stick.y()>seq10[16])  
		then red10_37_16.set_color(255,0,0); 
			dollar_2.set_caption("$16"); dollar_2.redraw(); 
			dollar_3.set_caption("$21"); dollar_3.redraw();
		elseif (stick.y()<seq10[16]) then red10_37_16.set_color(0,0,0);
		end;
		if (stick.y()>seq10[17])  
		then red10_37_17.set_color(255,0,0); 
			dollar_2.set_caption("$17"); dollar_2.redraw(); 
			dollar_3.set_caption("$20"); dollar_3.redraw();
		elseif (stick.y()<seq10[17]) then red10_37_17.set_color(0,0,0);
		end;
		if (stick.y()>seq10[18])  
		then red10_37_18.set_color(255,0,0); 
			dollar_2.set_caption("$18"); dollar_2.redraw(); 
			dollar_3.set_caption("$19"); dollar_3.redraw();
		elseif (stick.y()<seq10[18]) then red10_37_18.set_color(0,0,0);
		end;
		if (stick.y()>seq10[19])  
		then red10_37_19.set_color(255,0,0); 
			dollar_2.set_caption("$19"); dollar_2.redraw(); 
			dollar_3.set_caption("$18"); dollar_3.redraw();
		elseif (stick.y()<seq10[19]) then red10_37_19.set_color(0,0,0);
		end;
		if (stick.y()>seq10[20])  
		then red10_37_20.set_color(255,0,0); 
			dollar_2.set_caption("$20"); dollar_2.redraw(); 
			dollar_3.set_caption("$17"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_37_20.set_color(0,0,0);
		end;
		if (stick.y()>seq10[21])  
		then red10_37_21.set_color(255,0,0); 
			dollar_2.set_caption("$21"); dollar_2.redraw(); 
			dollar_3.set_caption("$16"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_37_21.set_color(0,0,0);
		end;
		if (stick.y()>seq10[22])  
		then red10_37_22.set_color(255,0,0); 
			dollar_2.set_caption("$22"); dollar_2.redraw(); 
			dollar_3.set_caption("$15"); dollar_3.redraw();
		elseif (stick.y()<seq10[22]) then red10_37_22.set_color(0,0,0);
		end;
		if (stick.y()>seq10[23])  
		then red10_37_23.set_color(255,0,0); 
			dollar_2.set_caption("$23"); dollar_2.redraw(); 
			dollar_3.set_caption("$14"); dollar_3.redraw();
		elseif (stick.y()<seq10[20]) then red10_37_23.set_color(0,0,0);
		end;
		if (stick.y()>seq10[24])  
		then red10_37_24.set_color(255,0,0); 
			dollar_2.set_caption("$24"); dollar_2.redraw(); 
			dollar_3.set_caption("$13"); dollar_3.redraw();
		elseif (stick.y()<seq10[21]) then red10_37_24.set_color(0,0,0);
		end;
		if (stick.y()>seq10[25])  
		then red10_37_25.set_color(255,0,0); 
			dollar_2.set_caption("$25"); dollar_2.redraw(); 
			dollar_3.set_caption("$12"); dollar_3.redraw();
		elseif (stick.y()<seq10[25]) then red10_37_25.set_color(0,0,0);
		end;
		if (stick.y()>seq10[26])  
		then red10_37_26.set_color(255,0,0); 
			dollar_2.set_caption("$26"); dollar_2.redraw(); 
			dollar_3.set_caption("$11"); dollar_3.redraw();
		elseif (stick.y()<seq10[26]) then red10_37_26.set_color(0,0,0);
		end;
		if (stick.y()>seq10[27])  
		then red10_37_27.set_color(255,0,0); 
			dollar_2.set_caption("$27"); dollar_2.redraw(); 
			dollar_3.set_caption("$10"); dollar_3.redraw();
		elseif (stick.y()<seq10[27]) then red10_37_27.set_color(0,0,0);
		end;
		if (stick.y()>seq10[28])  
		then red10_37_28.set_color(255,0,0); 
			dollar_2.set_caption("$28"); dollar_2.redraw(); 
			dollar_3.set_caption("$9"); dollar_3.redraw();
		elseif (stick.y()<seq10[28]) then red10_37_28.set_color(0,0,0);
		end;
		if (stick.y()>seq10[29])  
		then red10_37_29.set_color(255,0,0); 
			dollar_2.set_caption("$29"); dollar_2.redraw(); 
			dollar_3.set_caption("$8"); dollar_3.redraw();
		elseif (stick.y()<seq10[29]) then red10_37_29.set_color(0,0,0);
		end;
		if (stick.y()>seq10[30])  
		then red10_37_30.set_color(255,0,0); 
			dollar_2.set_caption("$30"); dollar_2.redraw(); 
			dollar_3.set_caption("$7"); dollar_3.redraw();
		elseif (stick.y()<seq10[30]) then red10_37_30.set_color(0,0,0);
		end;
		if (stick.y()>seq10[31])  
		then red10_37_31.set_color(255,0,0); 
			dollar_2.set_caption("$31"); dollar_2.redraw(); 
			dollar_3.set_caption("$6"); dollar_3.redraw();
		elseif (stick.y()<seq10[31]) then red10_37_31.set_color(0,0,0);
		end;
		if (stick.y()>seq10[32])  
		then red10_37_32.set_color(255,0,0); 
			dollar_2.set_caption("$32"); dollar_2.redraw(); 
			dollar_3.set_caption("$5"); dollar_3.redraw();
		elseif (stick.y()<seq10[32]) then red10_37_32.set_color(0,0,0);
		end;
		if (stick.y()>seq10[33])  
		then red10_37_33.set_color(255,0,0); 
			dollar_2.set_caption("$33"); dollar_2.redraw(); 
			dollar_3.set_caption("$4"); dollar_3.redraw();
		elseif (stick.y()<seq10[33]) then red10_37_33.set_color(0,0,0);
		end;
		if (stick.y()>seq10[34])  
		then red10_37_34.set_color(255,0,0); 
			dollar_2.set_caption("$34"); dollar_2.redraw(); 
			dollar_3.set_caption("$3"); dollar_3.redraw();
		elseif (stick.y()<seq10[34]) then red10_37_34.set_color(0,0,0);
		end;
		if (stick.y()>seq10[35])  
		then red10_37_35.set_color(255,0,0); 
			dollar_2.set_caption("$35"); dollar_2.redraw(); 
			dollar_3.set_caption("$2"); dollar_3.redraw();
		elseif (stick.y()<seq10[35]) then red10_37_35.set_color(0,0,0);
		end;
		if (stick.y()>seq10[36])  
		then red10_37_36.set_color(255,0,0); 
			dollar_2.set_caption("$36"); dollar_2.redraw(); 
			dollar_3.set_caption("$1"); dollar_3.redraw();
		elseif (stick.y()<seq10[36]) then red10_37_36.set_color(0,0,0);
		end;
		if (stick.y()>seq10[37])  
		then red10_37_37.set_color(255,0,0); 
			dollar_2.set_caption("$37"); dollar_2.redraw(); 
			dollar_3.set_caption("$0"); dollar_3.redraw();
		elseif (stick.y()<seq10[37]) then red10_37_37.set_color(0,0,0);
		end;
		dollar_37.set_caption("$37"); dollar_37.redraw();
		cursor37.present();
	end;
end;

sub box40 (int duration40)
begin
	loop int end_time = clock.time()  + duration40
   until clock.time() >= end_time
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
end;

sub dm2person (int duration)
begin
	loop int end_time = clock.time()  + duration
   until clock.time() >= end_time
	begin
		double b = random();
		if (b>  0.0) && (b<=0.149) then selling.set_caption("$0");selling.redraw(); Sentperson.present(); box10(8000); end;
		if (b>0.149) && (b<=0.190) then selling.set_caption("$1");selling.redraw(); Sentperson.present(); box13(8000); end;
		if (b>0.190) && (b<=0.352) then selling.set_caption("$2");selling.redraw(); Sentperson.present(); box16(8000); end;
		if (b>0.352) && (b<=0.447) then selling.set_caption("$3");selling.redraw(); Sentperson.present(); box19(8000); end;
		if (b>0.447) && (b<=0.555) then selling.set_caption("$4");selling.redraw(); Sentperson.present(); box22(8000); end;
		if (b>0.555) && (b<=0.636) then selling.set_caption("$5");selling.redraw(); Sentperson.present(); box25(8000); end;
		if (b>0.636) && (b<=0.690) then selling.set_caption("$6");selling.redraw(); Sentperson.present(); box28(8000); end;
		if (b>0.690) && (b<=0.731) then selling.set_caption("$7");selling.redraw(); Sentperson.present(); box31(8000); end;
		if (b>0.731) && (b<=0.799) then selling.set_caption("$8");selling.redraw(); Sentperson.present(); box34(8000); end;
		if (b>0.799) && (b<=0.840) then selling.set_caption("$9");selling.redraw(); Sentperson.present(); box37(8000); end;
		if (b>0.840) && (b<=0.999) then selling.set_caption("$10");selling.redraw(); Sentperson.present(); box40(8000); end;
	end;
end;

sub dm2comp (int durations)
begin int b = random(0,10);
	loop int end_time = clock.time()  + durations
   until clock.time() >= end_time
	begin
		if (b==0) then selling.set_caption("$0"); selling.redraw(); Sentcomp.present(); box10(8000); end;
		if (b==1) then selling.set_caption("$1"); selling.redraw(); Sentcomp.present(); box13(8000); end;
		if (b==2) then selling.set_caption("$2"); selling.redraw(); Sentcomp.present(); box16(8000); end;
		if (b==3) then selling.set_caption("$3"); selling.redraw(); Sentcomp.present(); box19(8000); end;
		if (b==4) then selling.set_caption("$4"); selling.redraw(); Sentcomp.present(); box22(8000); end;
		if (b==5) then selling.set_caption("$5"); selling.redraw(); Sentcomp.present(); box25(8000); end;
		if (b==6) then selling.set_caption("$6"); selling.redraw(); Sentcomp.present(); box28(8000); end;
		if (b==7) then selling.set_caption("$7"); selling.redraw(); Sentcomp.present(); box31(8000); end;
		if (b==8) then selling.set_caption("$8"); selling.redraw(); Sentcomp.present(); box34(8000); end;
		if (b==9) then selling.set_caption("$9"); selling.redraw(); Sentcomp.present(); box37(8000); end;
		if (b==10) then selling.set_caption("$10"); selling.redraw(); Sentcomp.present(); box40(8000); end;
	end;
end;

# Sequence for delivery of stimuli

array <int> sequence[12] = {4,3,4,4,2,2,1,3,3,1,1,2};
	loop int i=1 
	until i>12 
	begin
	if sequence[i]==1
		then p1vsperson.present(); box10(8000); waiting.present(); decision.present(); 
		fixing.present()
	elseif sequence[i]==2
		then p1vscomputer.present(); box10(8000); waiting.present(); decision.present(); 
		fixing.present()
	elseif sequence[i]==3
		then p2vsperson.present(); waiting.present(); dm2person(11000); fixing.present()
	elseif sequence[i]==4
		then p2vscomputer.present(); waiting.present(); dm2comp(11000); fixing.present()
	end;
		i=i+1
end;