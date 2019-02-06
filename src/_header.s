;==============================================================================
;
;  Quattro Creation Kit
;
;  Main header file.
;
;==============================================================================


	.import 	tab_song,tab_pitenv,tab_lfo
	.include "songtab.inc"

.segment "HEADER"

	ADDR		tab_song
	ADDR		0
	ADDR		tab_lfo				; lfo
	ADDR		tab_pitenv			; pitch
	ADDR		insdat

.segment "BANK0"
insdat:
	.incbin "cybsled_fm.bin"
