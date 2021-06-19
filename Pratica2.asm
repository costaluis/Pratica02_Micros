
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
L__high_int31:
	RETFIE      1
; end of _high_int

_low_int:
	MOVWF       ___Low_saveWREG+0 
	MOVF        STATUS+0, 0 
	MOVWF       ___Low_saveSTATUS+0 
	MOVF        BSR+0, 0 
	MOVWF       ___Low_saveBSR+0 

;Pratica2.c,9 :: 		void low_int() iv 0x0018 ics ICS_AUTO {
;Pratica2.c,10 :: 		if(!LATB.F3 && !PORTB.F7){
	BTFSC       LATB+0, 3 
	GOTO        L_low_int2
	BTFSC       PORTB+0, 7 
	GOTO        L_low_int2
L__low_int29:
;Pratica2.c,11 :: 		temp = 15;
	MOVLW       15
	MOVWF       _temp+0 
;Pratica2.c,12 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,13 :: 		}
L_low_int2:
;Pratica2.c,14 :: 		}
L_end_low_int:
L__low_int33:
	MOVF        ___Low_saveBSR+0, 0 
	MOVWF       BSR+0 
	MOVF        ___Low_saveSTATUS+0, 0 
	MOVWF       STATUS+0 
	SWAPF       ___Low_saveWREG+0, 1 
	SWAPF       ___Low_saveWREG+0, 0 
	RETFIE      0
; end of _low_int

_main:

;Pratica2.c,16 :: 		void main() {
;Pratica2.c,17 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Pratica2.c,18 :: 		TRISB = 0xF0;
	MOVLW       240
	MOVWF       TRISB+0 
;Pratica2.c,19 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;Pratica2.c,21 :: 		INTCON = 0b11100000;
	MOVLW       224
	MOVWF       INTCON+0 
;Pratica2.c,22 :: 		INTCON2.F7 = 0;
	BCF         INTCON2+0, 7 
;Pratica2.c,23 :: 		INTCON2.F2 = 1;
	BSF         INTCON2+0, 2 
;Pratica2.c,24 :: 		INTCON2.F0 = 0;
	BCF         INTCON2+0, 0 
;Pratica2.c,26 :: 		LATB.F3 = 1;
	BSF         LATB+0, 3 
;Pratica2.c,27 :: 		LATB.F2 = 1;
	BSF         LATB+0, 2 
;Pratica2.c,28 :: 		LATB.F1 = 1;
	BSF         LATB+0, 1 
;Pratica2.c,29 :: 		LATB.F0 = 1;
	BSF         LATB+0, 0 
;Pratica2.c,31 :: 		T0CON = 0b01000000;
	MOVLW       64
	MOVWF       T0CON+0 
;Pratica2.c,33 :: 		while(1){
L_main3:
;Pratica2.c,34 :: 		LATB.F3 = !LATB.F3;
	BTG         LATB+0, 3 
;Pratica2.c,35 :: 		LATB.F3 = !LATB.F3;
	BTG         LATB+0, 3 
;Pratica2.c,37 :: 		LATB.F2 = !LATB.F2;
	BTG         LATB+0, 2 
;Pratica2.c,38 :: 		LATB.F2 = !LATB.F2;
	BTG         LATB+0, 2 
;Pratica2.c,40 :: 		LATB.F1 = !LATB.F1;
	BTG         LATB+0, 1 
;Pratica2.c,41 :: 		LATB.F1 = !LATB.F1;
	BTG         LATB+0, 1 
;Pratica2.c,43 :: 		LATB.F0 = !LATB.F0;
	BTG         LATB+0, 0 
;Pratica2.c,44 :: 		LATB.F0 = !LATB.F0;
	BTG         LATB+0, 0 
;Pratica2.c,46 :: 		LATB.F6 = 0;
	BCF         LATB+0, 6 
;Pratica2.c,48 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main5
;Pratica2.c,49 :: 		temp = 129;
	MOVLW       129
	MOVWF       _temp+0 
;Pratica2.c,50 :: 		TMR0L = 129;
	MOVLW       129
	MOVWF       TMR0L+0 
;Pratica2.c,51 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,52 :: 		while(!PORTB.F0){}
L_main6:
	BTFSC       PORTB+0, 0 
	GOTO        L_main7
	GOTO        L_main6
L_main7:
;Pratica2.c,53 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,54 :: 		}
L_main5:
;Pratica2.c,56 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main8
;Pratica2.c,57 :: 		temp = 135;
	MOVLW       135
	MOVWF       _temp+0 
;Pratica2.c,58 :: 		TMR0L = 135;
	MOVLW       135
	MOVWF       TMR0L+0 
;Pratica2.c,59 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,60 :: 		while(!PORTB.F1){}
L_main9:
	BTFSC       PORTB+0, 1 
	GOTO        L_main10
	GOTO        L_main9
L_main10:
;Pratica2.c,61 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,62 :: 		}
L_main8:
;Pratica2.c,63 :: 		LATB.F6 = 1;
	BSF         LATB+0, 6 
;Pratica2.c,65 :: 		LATB.F5 = 0;
	BCF         LATB+0, 5 
;Pratica2.c,67 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main11
;Pratica2.c,68 :: 		temp = 77;
	MOVLW       77
	MOVWF       _temp+0 
;Pratica2.c,69 :: 		TMR0L = 77;
	MOVLW       77
	MOVWF       TMR0L+0 
;Pratica2.c,70 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,71 :: 		while(!PORTB.F0){}
L_main12:
	BTFSC       PORTB+0, 0 
	GOTO        L_main13
	GOTO        L_main12
L_main13:
;Pratica2.c,72 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,73 :: 		}
L_main11:
;Pratica2.c,75 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main14
;Pratica2.c,76 :: 		temp = 97;
	MOVLW       97
	MOVWF       _temp+0 
;Pratica2.c,77 :: 		TMR0L = 97;
	MOVLW       97
	MOVWF       TMR0L+0 
;Pratica2.c,78 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,79 :: 		while(!PORTB.F1){}
L_main15:
	BTFSC       PORTB+0, 1 
	GOTO        L_main16
	GOTO        L_main15
L_main16:
;Pratica2.c,80 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,81 :: 		}
L_main14:
;Pratica2.c,83 :: 		if(!PORTB.F2){
	BTFSC       PORTB+0, 2 
	GOTO        L_main17
;Pratica2.c,84 :: 		temp = 114;
	MOVLW       114
	MOVWF       _temp+0 
;Pratica2.c,85 :: 		TMR0L = 114;
	MOVLW       114
	MOVWF       TMR0L+0 
;Pratica2.c,86 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,87 :: 		while(!PORTB.F2){}
L_main18:
	BTFSC       PORTB+0, 2 
	GOTO        L_main19
	GOTO        L_main18
L_main19:
;Pratica2.c,88 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,89 :: 		}
L_main17:
;Pratica2.c,90 :: 		LATB.F5 = 1;
	BSF         LATB+0, 5 
;Pratica2.c,92 :: 		LATB.F4 = 0;
	BCF         LATB+0, 4 
;Pratica2.c,94 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main20
;Pratica2.c,95 :: 		temp = 15;
	MOVLW       15
	MOVWF       _temp+0 
;Pratica2.c,96 :: 		TMR0L = 15;
	MOVLW       15
	MOVWF       TMR0L+0 
;Pratica2.c,97 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,98 :: 		while(!PORTB.F0){}
L_main21:
	BTFSC       PORTB+0, 0 
	GOTO        L_main22
	GOTO        L_main21
L_main22:
;Pratica2.c,99 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,100 :: 		}
L_main20:
;Pratica2.c,102 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main23
;Pratica2.c,103 :: 		temp = 43;
	MOVLW       43
	MOVWF       _temp+0 
;Pratica2.c,104 :: 		TMR0L = 43;
	MOVLW       43
	MOVWF       TMR0L+0 
;Pratica2.c,105 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,106 :: 		while(!PORTB.F1){}
L_main24:
	BTFSC       PORTB+0, 1 
	GOTO        L_main25
	GOTO        L_main24
L_main25:
;Pratica2.c,107 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,108 :: 		}
L_main23:
;Pratica2.c,110 :: 		if(!PORTB.F2){
	BTFSC       PORTB+0, 2 
	GOTO        L_main26
;Pratica2.c,111 :: 		temp = 66;
	MOVLW       66
	MOVWF       _temp+0 
;Pratica2.c,112 :: 		TMR0L = 66;
	MOVLW       66
	MOVWF       TMR0L+0 
;Pratica2.c,113 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,114 :: 		while(!PORTB.F2){}
L_main27:
	BTFSC       PORTB+0, 2 
	GOTO        L_main28
	GOTO        L_main27
L_main28:
;Pratica2.c,115 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,116 :: 		}
L_main26:
;Pratica2.c,117 :: 		LATB.F4 = 1;
	BSF         LATB+0, 4 
;Pratica2.c,118 :: 		}
	GOTO        L_main3
;Pratica2.c,121 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
