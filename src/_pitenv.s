;==============================================================================
;
;  Add pitch envelopes here
;
;==============================================================================

	.export tab_pitenv
	.segment "BANK0"

	.include "pitenv.inc"
	
.macro POS addr1, addr2, addr3, addr4, addr5
	.byt		>addr1, <addr1, >addr2, <addr2, >addr3, <addr3, >addr4, <addr4, >addr5, <addr5
.endmacro

tab_pitenv:
	POS			pit001,pit001,pit002,pit003,pit004

	
pit001:
	.byte		100,100,100,100,100,100,100,100,100,100,100,100,CONT
pit002:
	.byte		100,101,102,101,100,99,98,99,LOOP
pit003:
	.byte		100,101,102,101,100,99,98,99,LOOP
pit004:
	.byte		100,101,102,101,100,99,98,99,LOOP



