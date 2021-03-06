;==============================================================================
;
;  Ys - Feena
;
;==============================================================================

	.include "song.inc"
	.segment "BANK0"
	.export ysfeena_a
	.export ysfeena_b
	.export ysfeena_c

	.define L__ %01000000
	.define __R %10000000
	.define _C_ %11000000

.proc ysfeena_a
	INIT	%11111111
	TVOL	250
	TEMPO	1
	SPEED	14

	INS		016,016,016,000,036,036,047,000	; waveform #
	VOL		250,250,250,210,240,240,180,210	; volume
	PAN		L__,L__,__R,__R,__R,L__,___,_C_	; pan
	GTM		053,222,222,053,222,222,___,053	; gate time
	DTN		___,___,___,___,___,___,___,015	; detune
	PIT		___,___,___,___,001,001,___,___	; pitch envelope
	PITRAT	___,___,___,___,100,100,___,___	; pitch envelope
	PITDEP	___,___,___,___,033,033,___,___	; pitch envelope
pat00:
	SPEED	14*4
	FRQ		Bn3,En3,Cs3,Bn4,En4,Cs4,___,Bn4 ; 0
	FRQ		An3,___,___,An4,___,___,___,An4 ; 1
	FRQ		Gs3,___,___,Gs4,___,___,___,Gs4 ; 2
	FRQ		Fs3,___,___,Fs4,___,___,___,Fs4 ; 3
	FRQ		An3,En3,Cn3,An4,En4,Cn4,___,An4 ; 4
	FRQ		Gs3,___,___,Gs4,___,___,___,Gs4 ; 5
	FRQ		Fs3,___,___,Fs4,___,___,___,Fs4 ; 6
	FRQ		En3,___,___,En4,___,___,___,En4 ; 7
	FRQ		Bn3,En3,Cs3,Bn4,En4,Cs4,En5,Bn4 ; 8
	FRQ		An3,___,___,An4,___,___,___,An4 ; 9
	FRQ		Gs3,___,___,Gs4,___,___,___,Gs4 ;10
	FRQ		Fs3,___,___,Fs4,___,___,___,Fs4 ;11
	FRQ		An3,En3,Cn3,An4,En4,Cn4,___,An4 ;12
	FRQ		Gs3,___,___,Gs4,___,___,___,Gs4 ;13
	FRQ		Fs3,___,___,Fs4,___,___,___,Fs4 ;14
	FRQ		En3,___,___,En4,___,___,Q__,En4 ;15

pat01:
	GTM		108,000,000,108,000,000,053,108	; gate time
	FRQ		En3,Fs3,Bn2,En4,Fs4,Bn3,___,En4 ; 0
	FRQ		___,___,___,___,___,___,___,___ ; 1
	FRQ		Ds3,___,___,Ds4,___,___,___,Ds4 ; 2
	FRQ		___,___,___,___,___,___,___,___ ; 3
	FRQ		Cs3,___,___,Cs4,___,___,___,Cs4 ; 4
	FRQ		___,___,___,___,___,___,___,___ ; 5
	FRQ		Ds3,___,___,Ds4,___,___,___,Ds4 ; 6
	FRQ		___,___,___,___,___,___,___,___ ; 7
	VOL		___,___,___,___,___,___,170,___
	FRQ		En3,___,___,En4,___,___,Bn0,En4 ; 8
	VOL		___,___,___,___,___,___,180,___
	FRQ		___,___,___,___,___,___,Bn0,___ ; 9
	VOL		___,___,___,___,___,___,190,___
	FRQ		Ds3,___,___,Ds4,___,___,Bn0,Ds4 ;10
	VOL		___,___,___,___,___,___,200,___
	FRQ		___,___,___,___,___,___,Bn0,___ ;11
	VOL		___,___,___,___,___,___,210,___
	FRQ		Cs3,___,___,Cs4,___,___,Bn0,Cs4 ;12
	VOL		___,___,___,___,___,___,220,___
	FRQ		___,___,___,___,___,___,Bn0,___ ;13
	VOL		___,___,___,___,___,___,230,___
	FRQ		Ds3,___,___,Ds4,___,___,Bn0,Ds4 ;14
	VOL		___,___,___,___,___,___,240,___
	SPEED	14
	FRQ		___,___,___,___,___,___,Bn0,___ ;15
	FRQ		___,___,___,___,___,___,___,___ ;15_1
	FRQ		___,___,___,___,___,___,___,___ ;15_2
	FRQ		___,Q__,Q__,___,Q__,Q__,___,___ ;15_3
	DEL		___,___,___,007,___,___,___,___	; note delay
.endproc

.proc ysfeena_b
	INIT	%11111111
	TVOL	250
	TEMPO	1
	SPEED	14

	INS		000,000,015,015,020,015,015,015	; waveform #
	VOL		250,250,210,210,180,220,200,190	; volume
	PAN		L__,__R,L__,__R,_C_,_C_,L__,__R	; pan
	GTM		220,220,000,000,002,000,000,000	; gate time
	DTN		___,___,000,000,000,000,010,020	; detune
	PIT		___,___,000,000,000,001,001,001	; pitch envelope
	PITRAT	___,___,___,___,___,090,100,110	; pitch envelope
	PITDEP	___,___,___,___,___,040,060,080	; pitch envelope
pat00:
	FRQ		En2,En3,Q__,Q__,Bn6,___,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ; 1
	FRQ		___,___,___,___,___,___,___,___ ; 2
	FRQ		___,___,___,___,___,___,___,___ ; 3
	VOL		___,___,211,177,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,___ ; 4
	VOL		___,___,222,222,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,___ ; 5
	FRQ		___,___,___,___,___,___,___,___ ; 6
	VOL		___,___,211,211,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,___ ; 7
	FRQ		___,___,___,___,Bn6,___,___,___ ; 8
	FRQ		___,___,___,___,___,___,___,___ ; 9
	FRQ		___,___,___,___,___,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;11
	FRQ		___,___,___,___,___,___,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;15
pat01:
	FRQ		En2,En3,Q__,Q__,Bn6,___,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ; 1
	FRQ		___,___,___,___,___,___,___,___ ; 2
	FRQ		___,___,___,___,___,___,___,___ ; 3
	VOL		___,___,211,199,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,___ ; 4
	VOL		___,___,222,222,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,___ ; 5
	FRQ		___,___,___,___,___,___,___,___ ; 6
	VOL		___,___,211,211,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,___ ; 7
	FRQ		___,___,___,___,Bn6,___,___,___ ; 8
	FRQ		___,___,___,___,___,___,___,___ ; 9
	FRQ		___,___,___,___,___,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;11
	FRQ		___,___,___,___,___,___,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;15
pat02:
	SPEED	7
	FRQ		En2,En3,Q__,Q__,Bn6,Fs5,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,En5,___,___ ; 1
	FRQ		___,___,___,___,___,___,Fs5,___ ;  _1
	FRQ		___,___,___,___,___,Fs5,___,___ ; 2
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,___,___,___,Bn5,___,Fs5 ; 3
	FRQ		___,___,___,___,___,___,Fs5,___ ;  _1
	VOL		___,___,211,199,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,Fs5,___,En5 ; 4
	FRQ		___,___,___,___,___,___,Bn5,___ ;  _1
	VOL		___,___,222,222,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,Fs5 ; 5
	FRQ		___,___,___,___,___,___,Fs5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Bn5 ; 6
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,211,211,___,___,___,___
	FRQ		___,___,Dn3,Gn3,___,___,___,Fs5 ; 7
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,Bn6,___,___,___ ; 8
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 9
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;11
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	LOOP	1,pat03e
	FRQ		___,___,___,___,___,En5,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,En5 ;15
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	JUMP	pat02
pat03e:
	FRQ		___,___,___,___,___,Dn5,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Dn5 ;15
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	LOOP	1,pat08
pat04:
	FRQ		Fn2,Fn3,Q__,Q__,Bn6,En5,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 1
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 2
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,En5 ; 3
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,211,199,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,An5,___,___ ; 4
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,222,222,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,___,___,___ ; 5
	FRQ		___,___,___,___,___,___,An5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 6
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,211,211,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,___,___,An5 ; 7
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,Bn6,___,___,___ ; 8
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 9
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;11
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;15
	FRQ		___,___,___,___,___,___,___,___ ;  _1
pat05:
	FRQ		Fn2,Fn3,Q__,Q__,Bn6,___,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 1
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 2
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 3
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,211,199,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,___,___,___ ; 4
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,222,222,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,___,___,___ ; 5
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 6
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,211,211,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,___,___,___ ; 7
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,Bn6,___,___,___ ; 8
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 9
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;11
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;15
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	JUMP	pat02
pat08:
	FRQ		Fn2,Fn3,Q__,Q__,Bn6,En5,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 1
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 2
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,En5 ; 3
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,211,199,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,An4,___,___ ; 4
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,222,222,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,___,___,___ ; 5
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 6
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	VOL		___,___,211,211,___,___,___,___
	FRQ		___,___,Cn3,Gn3,___,___,___,An4 ; 7
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,Bn6,___,___,___ ; 8
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 9
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;11
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	LOOP	1,pat09e
	FRQ		___,___,___,___,___,Cn5,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Cn5 ;15
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	JUMP	pat08
pat09e:
	FRQ		___,___,___,___,___,Dn5,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Dn5 ;15
	FRQ		___,___,___,___,___,___,___,___ ;  _1
pat10:
	SPEED	7
	FRQ		En2,En3,Bn2,Fs3,Bn6,Bn4,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;  _2
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _3
	FRQ		___,___,___,___,___,___,___,___ ;  _4
	FRQ		___,___,___,___,___,___,___,___ ;  _5
	FRQ		___,___,___,___,___,___,___,Bn4 ;  _6
	FRQ		___,___,___,___,___,___,___,___ ;  _7
	SPEED	14*4
	FRQ		___,___,___,___,___,___,___,___ ; 1
	FRQ		___,___,___,___,Bn6,___,___,___ ; 2
	FRQ		___,___,___,___,___,___,___,___ ; 3
	VOL		230,230,190,190,170,___,___,___
	FRQ		En2,En3,Bn2,Fs3,Bn6,___,___,___ ; 4
	FRQ		___,___,___,___,___,___,___,___ ; 5
	FRQ		___,___,___,___,Bn6,___,___,___ ; 6
	FRQ		___,___,___,___,___,___,___,___ ; 7
	VOL		210,210,190,190,160,___,___,___
	FRQ		En2,En3,Bn2,Fs3,Bn6,___,___,___ ; 8
	FRQ		___,___,___,___,___,___,___,___ ; 9
	FRQ		___,___,___,___,Bn6,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;11
	VOL		190,190,170,170,150,___,___,___
	FRQ		En2,En3,Bn2,Fs3,Bn6,___,___,___ ;12
	FRQ		___,___,___,___,___,___,___,___ ;13
	FRQ		___,___,___,___,Bn6,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;15
.endproc

.proc ysfeena_c
	INIT	%11111111
	TVOL	250
	TEMPO	1
	SPEED	7

	INS		000,036,016,011,015,015,015,011	; waveform #
	VOL		250,240,230,240,220,210,190,220	; volume
	PAN		L__,__R,_C_,_C_,_C_,_C_,L__,__R	; pan
	GTM		220,220,000,000,000,000,000,000	; gate time
	DTN		___,___,___,___,___,000,010,010	; detune
	PIT		___,___,001,001,___,001,001,001	; pitch envelope
	PITRAT	___,___,095,105,___,090,100,___	; pitch envelope
	PITDEP	___,___,050,040,___,040,060,___	; pitch envelope
pat00:
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		Fn3,Fn2,En5,En5,Q__,En5,___,___ ; 0
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,Dn5,Dn5,___,Cn5,___,En5 ; 1
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,En5,En5,Cn5,An4,___,Dn5 ; 2
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		___,___,___,___,Dn5,Fn4,___,En5 ; 3
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,___,___,Cn5,En5,___,___ ; 4
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,___,___,Dn5,Cn5,___,___ ; 5
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,___,___,Cn5,An4,___,___ ; 6
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		___,___,___,___,Dn5,Fn4,___,___ ; 7
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		___,___,An4,An4,Q__,En5,___,___ ; 8
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,___,___,___,Cn5,___,An4 ; 9
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,Bn4,Bn4,Cn5,An4,___,___ ;10
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		___,___,___,___,Dn5,Fn4,___,Bn4 ;11
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,Cn5,Cn5,Cn5,En5,___,___ ;12
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,___,___,Dn5,Cn5,___,Cn5 ;13
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,Dn5,Dn5,Cn5,An4,___,___ ;14
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		Q__,Q__,___,___,Dn5,Fn4,___,Dn5 ;15
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
pat01:
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		Fn3,Fn2,En5,En5,Q__,En5,___,___ ; 0
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,Dn5,Dn5,___,Cn5,___,En5 ; 1
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,En5,En5,Cn5,An4,___,Dn5 ; 2
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		___,___,___,___,Dn5,Fn4,___,En5 ; 3
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,___,___,Cn5,En5,___,___ ; 4
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,___,___,Dn5,Cn5,___,___ ; 5
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,___,___,Cn5,An4,___,___ ; 6
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		___,___,___,___,Dn5,Fn4,___,___ ; 7
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		___,___,An4,An4,Q__,En5,___,___ ; 8
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,___,___,___,Cn5,___,An4 ; 9
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	FRQ		___,___,Bn4,Bn4,Cn5,An4,___,___ ;10
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		___,___,___,___,Dn5,Fn4,___,Bn4 ;11
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,Cn5,Cn5,Cn5,En5,___,___ ;12
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,___,___,Dn5,Cn5,___,Cn5 ;13
	FRQ		___,___,___,___,___,___,En5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,En5,En5,Cn5,An4,___,___ ;14
	FRQ		___,___,___,___,___,___,Cn5,___ ;  _1
	FRQ		Q__,Q__,___,___,Dn5,Fn4,___,En5 ;15
	FRQ		___,___,___,___,___,___,An4,___ ;  _1
	LOOP	1,pat06
pat02:
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		En3,En2,Dn5,Dn5,Q__,Dn5,___,___ ; 0
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,Cn5,Cn5,___,Bn4,___,Dn5 ; 1
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,Dn5,Dn5,Bn4,Gn4,___,Cn5 ; 2
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		___,___,___,___,Cn5,En4,___,Dn5 ; 3
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,___,___,Bn4,Dn5,___,___ ; 4
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	FRQ		___,___,___,___,Cn5,Bn4,___,___ ; 5
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,___,___,Bn4,Gn4,___,___ ; 6
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		___,___,___,___,Cn5,En4,___,___ ; 7
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		___,___,Gn4,Gn4,Q__,Dn5,___,___ ; 8
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	FRQ		___,___,___,___,___,Bn4,___,Gn4 ; 9
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,An4,An4,Bn4,Gn4,___,___ ;10
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		___,___,___,___,Cn5,En4,___,An4 ;11
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,Bn4,Bn4,Bn4,Dn5,___,___ ;12
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	FRQ		___,___,___,___,Cn5,Bn4,___,Bn4 ;13
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,Cn5,Cn5,Bn4,Gn4,___,___ ;14
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		Q__,Q__,___,___,Cn5,En4,___,Cn5 ;15
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
pat03:
	VOL		___,___,___,___,225,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		En3,En2,Dn5,Dn5,Q__,Dn5,___,___ ; 0
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	FRQ		___,___,Cn5,Cn5,___,Bn4,___,Dn5 ; 1
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,Dn5,Dn5,Bn5,Gn4,___,Cn5 ; 2
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	VOL		___,___,___,___,215,___,___,___
	FRQ		___,___,___,___,Bn5,En4,___,Dn5 ; 3
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,225,___,___,___
	FRQ		___,___,___,___,Gn5,Dn5,___,___ ; 4
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	VOL		___,___,___,___,215,___,___,___
	FRQ		___,___,___,___,Gn5,Bn4,___,___ ; 5
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	VOL		___,___,___,___,225,___,___,___
	FRQ		___,___,___,___,En5,Gn4,___,___ ; 6
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	VOL		___,___,___,___,215,___,___,___
	FRQ		___,___,___,___,En5,En4,___,___ ; 7
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,225,___,___,___
	FRQ		___,___,Gn4,Gn4,Gn5,Dn5,___,___ ; 8
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	VOL		___,___,___,___,215,___,___,___
	FRQ		___,___,___,___,Gn5,Bn4,___,Gn4 ; 9
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	VOL		___,___,___,___,225,___,___,___
	FRQ		___,___,An4,An4,En5,Gn4,___,___ ;10
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	VOL		___,___,___,___,215,___,___,___
	FRQ		___,___,___,___,En5,En4,___,An4 ;11
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,225,___,___,___
	FRQ		___,___,Bn4,Bn4,Bn4,Dn5,___,___ ;12
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	VOL		___,___,___,___,215,___,___,___
	FRQ		___,___,___,___,Bn4,Bn4,___,Bn4 ;13
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	VOL		___,___,___,___,225,___,___,___
	FRQ		___,___,Dn5,Dn5,Gn4,Gn4,___,___ ;14
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	VOL		___,___,___,___,215,___,___,___
	FRQ		Q__,Q__,___,___,Gn4,En4,___,Dn5 ;15
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	JUMP	pat00
pat06:
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		En3,En2,Dn5,Dn5,Q__,Dn5,___,___ ; 0
	FRQ		___,___,___,___,___,___,Fn4,___ ;  _1
	FRQ		___,___,Cn5,Cn5,___,Bn4,___,Dn5 ; 1
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,Dn5,Dn5,Bn4,Gn4,___,Cn5 ; 2
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		___,___,___,___,Cn5,En4,___,Dn5 ; 3
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,___,___,Bn4,Dn5,___,___ ; 4
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	FRQ		___,___,___,___,Cn5,Bn4,___,___ ; 5
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,___,___,Bn4,Gn4,___,___ ; 6
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		___,___,___,___,Cn5,En4,___,___ ; 7
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,220,___,___,___
	PAN		___,___,___,___,_C_,___,___,___
	FRQ		___,___,Gn5,Gn5,Q__,Dn5,___,___ ; 8
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	FRQ		___,___,___,___,___,Bn4,___,Gn5 ; 9
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,An5,An5,Bn4,Gn4,___,___ ;10
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		___,___,___,___,Cn5,En4,___,An5 ;11
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
	VOL		___,___,___,___,210,___,___,___
	PAN		___,___,___,___,L__,___,___,___
	FRQ		___,___,Bn5,Bn5,Bn4,Dn5,___,___ ;12
	FRQ		___,___,___,___,___,___,En4,___ ;  _1
	FRQ		___,___,___,___,Cn5,Bn4,___,Bn5 ;13
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	VOL		___,___,___,___,200,___,___,___
	PAN		___,___,___,___,__R,___,___,___
	FRQ		___,___,Cn6,Cn6,Bn4,Gn4,___,___ ;14
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		Q__,Q__,___,___,Cn5,En4,___,Cn6 ;15
	FRQ		___,___,___,___,___,___,Gn4,___ ;  _1
pat07:
	GTM		000,000,___,___,___,___,___,___	; gate time
	VOL		___,___,___,___,220,220,210,___
	PAN		___,___,___,___,_C_,L__,__R,___
	FRQ		En3,En2,Dn6,Dn6,Gn5,Bn5,___,___ ; 0
	FRQ		___,___,___,___,___,___,Bn5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Dn6 ; 1
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 2
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 3
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,Bn5,Bn5,Dn5,Gn5,___,___ ; 4
	FRQ		___,___,___,___,___,___,Gn5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Bn5 ; 5
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 6
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ; 7
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,Gn5,Gn5,Bn4,Dn5,___,___ ; 8
	FRQ		___,___,___,___,___,___,Dn5,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Gn5 ; 9
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;10
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;11
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,Dn5,Dn5,Gn4,Bn4,___,___ ;12
	FRQ		___,___,___,___,___,___,Bn4,___ ;  _1
	FRQ		___,___,___,___,___,___,___,Dn5 ;13
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;14
	FRQ		___,___,___,___,___,___,___,___ ;  _1
	FRQ		___,___,___,___,___,___,___,___ ;15
	FRQ		___,___,___,___,___,___,___,___ ;  _1
pat08:
	SPEED	7*31
	FRQ		___,___,Q__,___,___,___,___,___ ; 0
	SPEED	7
	FRQ		Q__,Q__,___,Q__,Q__,Q__,Q__,Q__ ; 1
	JUMP	ysfeena_b
	RET
	
.endproc
