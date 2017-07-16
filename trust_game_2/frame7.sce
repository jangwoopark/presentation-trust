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

pcl_file = "frame7.pcl";

begin;

picture {} default; 

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

trial { stimulus_event { picture cursor10; } coding;  } codes;