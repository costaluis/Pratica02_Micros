
_high_int:

;Pratica2.c,3 :: 		void high_int() iv 0x0008 ics ICS_AUTO{
;Pratica2.c,4 :: 		LATC.F2 = !LATC.F2;
	BTG         LATC+0, 2 
;Pratica2.c,5 :: 		TMR0L = temp;
	MOVF        _temp+0, 0 
	MOVWF       TMR0L+0 
;Pratica2.c,6 :: 		INTCON.f2 = 0;
	BCF         INTCON+0, 2 
;Pratica2.c,7 :: 		}
L_end_high_int:
L__high_int20:
	RETFIE      1
; end of _high_int

_low_int:
	MOVWF       ___Low_saveWREG+0 
	MOVF        STATUS+0, 0 
	MOVWF       ___Low_saveSTATUS+0 
	MOVF        BSR+0, 0 
	MOVWF       ___Low_saveBSR+0 

;Pratica2.c,11 :: 		void low_int() iv 0x0018 ics ICS_AUTO {
;Pratica2.c,12 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_low_int0
;Pratica2.c,13 :: 		if(!PORTB.F4){
	BTFSC       PORTB+0, 4 
	GOTO        L_low_int1
;Pratica2.c,14 :: 		temp = 15;
	MOVLW       15
	MOVWF       _temp+0 
;Pratica2.c,15 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,16 :: 		}
L_low_int1:
;Pratica2.c,17 :: 		if(!PORTB.F5){
	BTFSC       PORTB+0, 5 
	GOTO        L_low_int2
;Pratica2.c,18 :: 		temp = 77;
	MOVLW       77
	MOVWF       _temp+0 
;Pratica2.c,19 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,20 :: 		}
L_low_int2:
;Pratica2.c,21 :: 		if(!PORTB.F6){
	BTFSC       PORTB+0, 6 
	GOTO        L_low_int3
;Pratica2.c,22 :: 		temp = 129;
	MOVLW       129
	MOVWF       _temp+0 
;Pratica2.c,23 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,24 :: 		}
L_low_int3:
;Pratica2.c,25 :: 		}
	GOTO        L_low_int4
L_low_int0:
;Pratica2.c,27 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_low_int5
;Pratica2.c,28 :: 		if(!PORTB.F4){
	BTFSC       PORTB+0, 4 
	GOTO        L_low_int6
;Pratica2.c,29 :: 		temp = 43;
	MOVLW       43
	MOVWF       _temp+0 
;Pratica2.c,30 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,31 :: 		}
L_low_int6:
;Pratica2.c,32 :: 		if(!PORTB.F5){
	BTFSC       PORTB+0, 5 
	GOTO        L_low_int7
;Pratica2.c,33 :: 		temp = 97;
	MOVLW       97
	MOVWF       _temp+0 
;Pratica2.c,34 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,35 :: 		}
L_low_int7:
;Pratica2.c,36 :: 		if(!PORTB.F6){
	BTFSC       PORTB+0, 6 
	GOTO        L_low_int8
;Pratica2.c,37 :: 		temp = 135;
	MOVLW       135
	MOVWF       _temp+0 
;Pratica2.c,38 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,39 :: 		}
L_low_int8:
;Pratica2.c,40 :: 		}
	GOTO        L_low_int9
L_low_int5:
;Pratica2.c,42 :: 		if(!PORTB.F2){
	BTFSC       PORTB+0, 2 
	GOTO        L_low_int10
;Pratica2.c,43 :: 		if(!PORTB.F4){
	BTFSC       PORTB+0, 4 
	GOTO        L_low_int11
;Pratica2.c,44 :: 		temp = 66;
	MOVLW       66
	MOVWF       _temp+0 
;Pratica2.c,45 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,46 :: 		}
L_low_int11:
;Pratica2.c,47 :: 		if(!PORTB.F5){
	BTFSC       PORTB+0, 5 
	GOTO        L_low_int12
;Pratica2.c,48 :: 		temp = 114;
	MOVLW       114
	MOVWF       _temp+0 
;Pratica2.c,49 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,50 :: 		}
L_low_int12:
;Pratica2.c,51 :: 		}
	GOTO        L_low_int13
L_low_int10:
;Pratica2.c,53 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,54 :: 		}
L_low_int13:
;Pratica2.c,55 :: 		}
L_low_int9:
;Pratica2.c,56 :: 		}
L_low_int4:
;Pratica2.c,57 :: 		INTCON.F0 = 0;
	BCF         INTCON+0, 0 
;Pratica2.c,58 :: 		}
L_end_low_int:
L__low_int22:
	MOVF        ___Low_saveBSR+0, 0 
	MOVWF       BSR+0 
	MOVF        ___Low_saveSTATUS+0, 0 
	MOVWF       STATUS+0 
	SWAPF       ___Low_saveWREG+0, 1 
	SWAPF       ___Low_saveWREG+0, 0 
	RETFIE      0
; end of _low_int

_main:

;Pratica2.c,60 :: 		void main() {
;Pratica2.c,61 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Pratica2.c,62 :: 		TRISB = 0xF0;
	MOVLW       240
	MOVWF       TRISB+0 
;Pratica2.c,63 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;Pratica2.c,64 :: 		RCON.IPEN = 1;
	BSF         RCON+0, 7 
;Pratica2.c,66 :: 		INTCON = 0b11101000;
	MOVLW       232
	MOVWF       INTCON+0 
;Pratica2.c,67 :: 		INTCON2.F7 = 0;
	BCF         INTCON2+0, 7 
;Pratica2.c,68 :: 		INTCON2.F2 = 1;
	BSF         INTCON2+0, 2 
;Pratica2.c,69 :: 		INTCON2.F0 = 0;
	BCF         INTCON2+0, 0 
;Pratica2.c,71 :: 		LATB.F3 = 1;
	BSF         LATB+0, 3 
;Pratica2.c,72 :: 		LATB.F2 = 1;
	BSF         LATB+0, 2 
;Pratica2.c,73 :: 		LATB.F1 = 1;
	BSF         LATB+0, 1 
;Pratica2.c,74 :: 		LATB.F0 = 1;
	BSF         LATB+0, 0 
;Pratica2.c,76 :: 		T0CON = 0b01010000;
	MOVLW       80
	MOVWF       T0CON+0 
;Pratica2.c,78 :: 		while(1){
L_main14:
;Pratica2.c,79 :: 		LATB.F2 = !LATB.F2;
	BTG         LATB+0, 2 
;Pratica2.c,80 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main16:
	DECFSZ      R13, 1, 1
	BRA         L_main16
	DECFSZ      R12, 1, 1
	BRA         L_main16
	DECFSZ      R11, 1, 1
	BRA         L_main16
	NOP
;Pratica2.c,81 :: 		LATB.F2 = !LATB.F2;
	BTG         LATB+0, 2 
;Pratica2.c,83 :: 		LATB.F1 = !LATB.F1;
	BTG         LATB+0, 1 
;Pratica2.c,84 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
;Pratica2.c,85 :: 		LATB.F1 = !LATB.F1;
	BTG         LATB+0, 1 
;Pratica2.c,88 :: 		LATB.F0 = !LATB.F0;
	BTG         LATB+0, 0 
;Pratica2.c,89 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 1
	BRA         L_main18
	DECFSZ      R12, 1, 1
	BRA         L_main18
	DECFSZ      R11, 1, 1
	BRA         L_main18
	NOP
;Pratica2.c,90 :: 		LATB.F0 = !LATB.F0;
	BTG         LATB+0, 0 
;Pratica2.c,93 :: 		}
	GOTO        L_main14
;Pratica2.c,95 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
