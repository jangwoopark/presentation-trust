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
text { caption = "SENDING:"; } sending;
text { caption = "KEEPING:"; } keeping;
text { caption = "_"; } dollar_2;
text { caption = "_"; } dollar_3;
box { height = 486; width = 2; color = 255,255,255; } vert;
box { height = 2; width = 142; color = 255,255,255; } horiz;
box { height = 2; width = 4; color = 255,255,255; } divide;
box { height = 42; width = 140; color = 0,0,0; } zero;
box { height = 42; width = 140; color = 0,0,0; } red10_1;
box { height = 42; width = 140; color = 0,0,0; } red10_2;
box { height = 42; width = 140; color = 0,0,0; } red10_3;
box { height = 42; width = 140; color = 0,0,0; } red10_4;
box { height = 42; width = 140; color = 0,0,0; } red10_5;
box { height = 42; width = 140; color = 0,0,0; } red10_6;
box { height = 42; width = 140; color = 0,0,0; } red10_7;
box { height = 42; width = 140; color = 0,0,0; } red10_8;
box { height = 42; width = 140; color = 0,0,0; } red10_9;
box { height = 42; width = 140; color = 0,0,0; } red10_10;

picture { text cross; x = 0; y = 0;
		text select; x = -250; y = 0;
		text dollar; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 370; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 370; y = -23;
		box red10_1; x=0; y=-198;
		box red10_2; x=0; y=-154;
		box red10_3; x=0; y=-110;
		box red10_4; x=0; y=-66;
		box red10_5; x=0; y=-22;
		box red10_6; x=0; y=22;
		box red10_7; x=0; y=66;
		box red10_8; x=0; y=110;
		box red10_9; x=0; y=154;
		box red10_10; x=0; y=198;
		box zero; x=0; y=-242;
		box vert; x=70; y=-22; 
		box vert; x=-70; y=-22; 
		box horiz; x=0; y=220; 
		box horiz; x=0; y=-264;
		LOOP $i 11;
		box divide; x=68; y='220-$i*44';
		box divide; x=-68; y='220-$i*44';
		ENDLOOP;
		} cursor10;

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
	until	response_manager.total_response_count( 1 ) > count begin
	stick.poll();
	cursor10.set_part_x( 1, stick.x() ); 
	cursor10.set_part_y( 1, stick.y() );
		if (stick.y()==-264) then zero.set_color(0,0,0); dollar_2.set_caption("_"); dollar_2.redraw(); 
		dollar_3.set_caption("_"); dollar_3.redraw();
		end;
		if (stick.y()>-264) 
		then zero.set_color(0,255,0); 
			dollar_2.set_caption("0"); dollar_2.redraw(); 
			dollar_3.set_caption("10"); dollar_3.redraw();
		elseif (stick.y()<-264) then zero.set_color(0,0,0); 
		end;
		if (stick.y()>-220) 
		then red10_1.set_color(255,0,0); 
			dollar_2.set_caption("1"); dollar_2.redraw(); 
			dollar_3.set_caption("9"); dollar_3.redraw();
		elseif (stick.y()<-220) then red10_1.set_color(0,0,0);
		end;
		if (stick.y()>-176) 
		then red10_2.set_color(255,0,0); 
			dollar_2.set_caption("2"); dollar_2.redraw(); 
			dollar_3.set_caption("8"); dollar_3.redraw();
		elseif (stick.y()<-176) then red10_2.set_color(0,0,0);
		end;
		if (stick.y()>-132)  
		then red10_3.set_color(255,0,0); 
			dollar_2.set_caption("3"); dollar_2.redraw(); 
			dollar_3.set_caption("7"); dollar_3.redraw();
		elseif (stick.y()<-132) then red10_3.set_color(0,0,0);
		end;
		if (stick.y()>-88)  
		then red10_4.set_color(255,0,0); 
			dollar_2.set_caption("4"); dollar_2.redraw(); 
			dollar_3.set_caption("6"); dollar_3.redraw();
		elseif (stick.y()<-88) then red10_4.set_color(0,0,0);
		end;
		if (stick.y()>-44)  
		then red10_5.set_color(255,0,0); 
			dollar_2.set_caption("5"); dollar_2.redraw(); 
			dollar_3.set_caption("5"); dollar_3.redraw();
		elseif (stick.y()<-44) then red10_5.set_color(0,0,0);
		end;
		if (stick.y()>0)  
		then red10_6.set_color(255,0,0); 
			dollar_2.set_caption("6"); dollar_2.redraw(); 
			dollar_3.set_caption("4"); dollar_3.redraw();
		elseif (stick.y()<0) then red10_6.set_color(0,0,0);
		end;
		if (stick.y()>44)  
		then red10_7.set_color(255,0,0); 
			dollar_2.set_caption("7"); dollar_2.redraw(); 
			dollar_3.set_caption("3"); dollar_3.redraw();
		elseif (stick.y()<44) then red10_7.set_color(0,0,0);
		end;
		if (stick.y()>88)  
		then red10_8.set_color(255,0,0); 
			dollar_2.set_caption("8"); dollar_2.redraw(); 
			dollar_3.set_caption("2"); dollar_3.redraw();
		elseif (stick.y()<88) then red10_8.set_color(0,0,0);
		end;
		if (stick.y()>132)  
		then red10_9.set_color(255,0,0); 
			dollar_2.set_caption("9"); dollar_2.redraw(); 
			dollar_3.set_caption("1"); dollar_3.redraw();
		elseif (stick.y()<176) then red10_9.set_color(0,0,0);
		end;
		if (stick.y()>176)  
		then red10_10.set_color(255,0,0); 
			dollar_2.set_caption("10"); dollar_2.redraw(); 
			dollar_3.set_caption("0"); dollar_3.redraw();
		elseif (stick.y()<220) then red10_10.set_color(0,0,0);
		end;
		cursor10.present();
end;
