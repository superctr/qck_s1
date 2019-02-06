;==============================================================================
;
;  This is the main song table. Add song entries here.
;
;==============================================================================

	.export tab_song
;	.import song000,speakertest,testsong
	
	.include "songtab.inc"

	.segment "BANK0"
	
; Song ID 00 is played automatically when booting
tab_song:
	SONG	ysfeena_a					; 000
	SONG	ysfeena_b					; 001
	SONG	ysfeena_c					; 002
	SONG	emptysong					; 003
	SONG	emptysong					; 004
	SONG	emptysong					; 005
	SONG	emptysong					; 006
	SONG	emptysong					; 007
	SONG	emptysong					; 008
	SONG	emptysong					; 009
	SONG	emptysong					; 00a
	SONG	emptysong					; 00b
	SONG	emptysong					; 00c
	SONG	emptysong					; 00d
	SONG	emptysong					; 00e
	SONG	emptysong					; 00f

