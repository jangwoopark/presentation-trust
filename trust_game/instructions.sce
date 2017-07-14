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

picture { text { caption = "You are Player 1 playing against a human.
You send $5, and keep $5.
Player 2 now has $25 = 3 x 5 + 10.
Player 2 returns $7 to you and keeps $18 for himself."; } ; x=0; y=0; } page1;

picture { text { caption = "You are Player 2 playing against a human.
Player 1 sends you $3 and keeps $7.
You receive $9 = 3 x 3 and can return any amount from $0 to $19, which includes your $10 show-up earnings.
If you choose to return $2, you have $17 and Player 1 has $9 = 7 + 2."; }; x=0; y=0; } page2;

picture { text { caption = "You are Player 1 playing against a computer.
You send $5, and keep $5.
The computer as Player 2 now has $25 = 3 x 5 + 10.
Player 2 (computer) returns $6 to you and keeps $19 for itself."; }; x=0; y=0; } page3;

picture { text { caption = "You are Player 2 playing against a computer.
The computer as Player 1 sends you $5 and keeps $5.
You receive $15 = 5 x 3 and can return any amount from $0 to $25, which includes your $10 show-up earnings.
If you choose to return $0, you have $25 and the computer has $5 = 5 + 0."; }; x=0; y=0; } page4;

trial {picture page1;} pagina1;
trial {picture page2;} pagina2;
trial {picture page3;} pagina3;
trial {picture page4;} pagina4;

begin_pcl;

mouse stick = response_manager.get_mouse( 1 ); 
#joystick stick = response_manager.get_joystick( 1 ); 
stick.set_min_max( 1, -1, 1 );
stick.set_min_max( 2, -264, 220 );
#stick.set_saturation( 1, 0.999 );
#stick.set_saturation( 2, 0.999 );
#stick.set_dead_zone( 1, 0.001 ); 
#stick.set_dead_zone( 2, 0.001 ); 

sub second
begin pagina2.present();
int count = response_manager.total_response_count( 1 )
if response_manager.total_response_count( 1 ) > count then third(); end;
end;

sub third
begin pagina3.present();
int count = response_manager.total_response_count( 1 )
if response_manager.total_response_count( 1 ) > count then fourth(); end;
end;

sub fourth
begin pagina4.present();
int count = response_manager.total_response_count( 1 )
if response_manager.total_response_count( 1 ) > count then end; end;
end;

#first page
sub first
begin pagina1.present();
int count = response_manager.total_response_count( 1 )
if response_manager.total_response_count( 1 ) > count then second(); end;
end;