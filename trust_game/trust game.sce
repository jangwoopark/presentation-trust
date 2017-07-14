scenario = "trust game";
scenario_type = fMRI_emulation;
#scenario_type = fMRI;
scan_period = 3000;
response_matching = simple_matching;
no_logfile = false;
sequence_interrupt=false; #default
#active_buttons = 2;
#button_codes=0,1;
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
"COMPUTER DECIDED RETURN"; }; x=0; y=0; } compdecided;
picture { text { caption = 
"PERSON DECIDED RETURN"; }; x=0; y=0; } persondecided;

picture { text { caption = "+"; font_size = 50; }; x=0; y=0; } fix;

trial { picture p1person; duration = 3000; code = "p1 vs person";} p1vsperson;
trial { picture p1computer; duration = 3000; code = "p1 vs computer";} p1vscomputer;
trial { picture p2person; duration = 3000; code = "p2 vs person";} p2vsperson;
trial { picture p2computer; duration = 3000; code = "p2 vs computer";} p2vscomputer;
trial { picture wait; duration = 6000; code = "wait";} waiting;
trial { picture compdecided; duration = 3000; code = "computer decided";} decidedcomp;
trial { picture persondecided; duration = 3000; code = "person decided";} decidedperson;
trial { picture fix; duration = 15000; code = "fix";} fixing;

# sending

text { caption = "PERSON SENT"; } Person;
text { caption = "COMPUTER SENT"; } Comp;
text { caption = "_"; } selling;
picture { text Comp; x=0; y=0; text selling; x=215; y=0; } Sentco;
picture { text Person; x=0; y=0; text selling; x=215; y=0; } Sentpe;
trial { stimulus_event { picture Sentco; duration = 3000; } computersent;} Sentcomp;
trial { stimulus_event { picture Sentpe; duration = 3000; } personsent;} Sentperson;

# selecting

text { caption = " "; font_size = 12; } cross; 
text { caption = "SELECT
AMOUNT
FROM"; } select;
text { caption = "SENDING:"; } sending;
text { caption = "KEEPING:"; } keeping;
text { caption = "_"; } dollar_2;
text { caption = "_"; } dollar_3;
box { height = 486; width = 2; color = 255,255,255; } vert;
box { height = 2; width = 142; color = 255,255,255; } horiz;
box { height = 2; width = 4; color = 255,255,255; } divide;
box { height = 42; width = 140; color = 0,0,0; } zero;

# cursors for 10, 13, 16, 19, 22, 25, 28, 31, 34, 37, 40

TEMPLATE "cursors.tem" {
dol dollar k red10 rex cursor coding codes; 
10 dollar_10 10 "red10_10_" rex10 cursor10 coding10 codes10;
13 dollar_13 13 "red10_13_" rex13 cursor13 coding13 codes13;
16 dollar_16 16 "red10_16_" rex16 cursor16 coding16 codes16;
19 dollar_19 19 "red10_19_" rex19 cursor19 coding19 codes19;
22 dollar_22 22 "red10_22_" rex22 cursor22 coding22 codes22;
25 dollar_25 25 "red10_25_" rex25 cursor25 coding25 codes25;
28 dollar_28 28 "red10_28_" rex28 cursor28 coding28 codes28;
31 dollar_31 31 "red10_31_" rex31 cursor31 coding31 codes31;
34 dollar_34 34 "red10_34_" rex34 cursor34 coding34 codes34;
37 dollar_37 37 "red10_37_" rex37 cursor37 coding37 codes37;
40 dollar_40 40 "red10_40_" rex40 cursor40 coding40 codes40;
};
			 
begin_pcl;

include "cursors.pcl";

include "subs.pcl";

# Sequence for delivery of stimuli

array <int> sequence[12] = {4,3,4,4,2,2,1,3,3,1,1,2};
	loop int i=1 
	until i>12 
	begin
	if sequence[i]==1
		then p1vsperson.present(); decisionperson(8000); waiting.present(); decidedperson.present(); 
		fixing.present()
	elseif sequence[i]==2
		then p1vscomputer.present(); decisioncomp(8000); waiting.present(); decidedcomp.present(); 
		fixing.present()
	elseif sequence[i]==3
		then p2vsperson.present(); waiting.present(); dm2person(11000); fixing.present()
	elseif sequence[i]==4
		then p2vscomputer.present(); waiting.present(); dm2comp(11000); fixing.present()
	end;
		i=i+1
end;