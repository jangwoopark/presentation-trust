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

box { height = 486; width = 2; color = 255,255,255; } vert;
box { height = 2; width = 142; color = 255,255,255; } horiz;
box { height = 2; width = 4; color = 255,255,255; } divide;
box { height = 42; width = 138; color = 0,255,0; } zero;
box { height = 42; width = 138; color = 255,0,0; } red; 

picture { text { caption = "+"; font_size = 12; };
	x = 0; y = 0;
			 box zero; x=0; y=-242;
			 box red; x=0; y=-198;
			 box red; x=0; y=-154;
			 box red; x=0; y=-110;
			 box red; x=0; y=-66;
			 box red; x=0; y=-22;
			 box red; x=0; y=22;
			 box red; x=0; y=66;
			 box red; x=0; y=110;
 			 box red; x=0; y=154;
			 box red; x=0; y=198;
			 box vert; x=70; y=-22; 
			 box vert; x=-70; y=-22; 
			 box horiz; x=0; y=220; 
			 box horiz; x=0; y=-264;
			 LOOP $i 11;
			 box divide; x=68; y='220-($i*44)';
			 box divide; x=-68; y='220-($i*44)';
			 ENDLOOP;} cursor;

begin_pcl;

mouse stick = response_manager.get_mouse( 1 );
#joystick stick = response_manager.get_joystick( 1 ); 
stick.set_min_max( 1, -1, 1 );
stick.set_min_max( 2, -242, 198 );
#stick.set_saturation( 1, 0.9 );
#stick.set_saturation( 2, 0.9 );
#stick.set_dead_zone( 1, 0.1 ); 
#stick.set_dead_zone( 2, 0.1 );
int color_1 = 0;
int color_2 = 0;
int color_3 = 0;

loop until false begin
	stick.poll();  
   cursor.set_part_x( 1, stick.x() );
   cursor.set_part_y( 1, stick.y() );
	if (stick.y()==-242) then color_1=0; color_2=0; color_3=0; 
	elseif (stick.y()>-242) then color_1=0; color_2=255; color_3=0; end;
	zero.set_color(color_1,color_2,color_3 );
	cursor.present();
end;

