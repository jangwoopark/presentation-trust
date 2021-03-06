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

array { LOOP $i 10; $k = '$i+1'; box {height = 42; width = 140; color = 0,0,0;} "red10_$k"; ENDLOOP; } rex;

picture { text cross; x = 0; y = 0;
		LOOP $i 10; $k = '$i+1';
		box "red10_$k" ; x=0; y='-198+$i*44';
		ENDLOOP;		
		text select; x = -250; y = 0;
		text dollar; x = -250; y = -100;
		text sending; x = 250; y = 23;
		text dollar_2; x = 400; y = 23;
		text keeping; x = 250; y = -23;
		text dollar_3; x = 400; y = -23;
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
	until	response_manager.total_response_count( 1 ) > count 
begin 
	array <int> seq10[10] = {-220, -176, -132, -88, -44, 0, 44, 88, 132, 176};
	array <string> num[10] = {"$1", "$2", "$3","$4","$5","$6","$7","$8","$9","$10"};
	array <string> mun[10] = {"$9", "$8", "$7","$6","$5","$4","$3","$2","$1","$0"};
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
		loop int t=1 until t>10 begin
			if (stick.y()>seq10[t]) 
			then rex[t].set_color(255,0,0); 
			dollar_2.set_caption(num[t]); dollar_2.redraw(); 
			dollar_3.set_caption(mun[t]); dollar_3.redraw();
			elseif (stick.y()<seq10[t]) 
			then rex[t].set_color(0,0,0);
			end;
			t = t + 1;
		end;
		cursor10.present();
end;
