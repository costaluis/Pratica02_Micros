
_high_int:

;Pratica2.c,3 :: 		void high_int() iv 0x0008 ics ICS_AUTO{
;Pratica2.c,4 :: 		LATC.F2 = !LATC.F2;
	BTG         LATC+0, 2 
;Pratica2.c,5 :: 		TMR0H = tempH;
	MOVF        _tempH+0, 0 
	MOVWF       TMR0H+0 
;Pratica2.c,6 :: 		TMR0L = tempL;
	MOVF        _tempL+0, 0 
	MOVWF       TMR0L+0 
;Pratica2.c,7 :: 		INTCON.f2 = 0;
	BCF         INTCON+0, 2 
;Pratica2.c,8 :: 		}
L_end_high_int:
L__high_int27:
	RETFIE      1
; end of _high_int

_main:

;Pratica2.c,11 :: 		void main() {
;Pratica2.c,12 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Pratica2.c,13 :: 		TRISB = 0x0F;
	MOVLW       15
	MOVWF       TRISB+0 
;Pratica2.c,14 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;Pratica2.c,16 :: 		INTCON = 0b11100000;
	MOVLW       224
	MOVWF       INTCON+0 
;Pratica2.c,17 :: 		INTCON2.F7 = 0;
	BCF         INTCON2+0, 7 
;Pratica2.c,19 :: 		LATB.F7 = 1;
	BSF         LATB+0, 7 
;Pratica2.c,20 :: 		LATB.F6 = 1;
	BSF         LATB+0, 6 
;Pratica2.c,21 :: 		LATB.F5 = 1;
	BSF         LATB+0, 5 
;Pratica2.c,22 :: 		LATB.F4 = 1;
	BSF         LATB+0, 4 
;Pratica2.c,24 :: 		T0CON = 0b00001000;
	MOVLW       8
	MOVWF       T0CON+0 
;Pratica2.c,26 :: 		while(1){
L_main0:
;Pratica2.c,27 :: 		LATB.F6 = 0;
	BCF         LATB+0, 6 
;Pratica2.c,29 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Pratica2.c,30 :: 		tempH = 0xFF;
	MOVLW       255
	MOVWF       _tempH+0 
;Pratica2.c,31 :: 		TMR0H = 0xFF;
	MOVLW       255
	MOVWF       TMR0H+0 
;Pratica2.c,32 :: 		tempL = 0x03;
	MOVLW       3
	MOVWF       _tempL+0 
;Pratica2.c,33 :: 		TMR0L = 0x03;
	MOVLW       3
	MOVWF       TMR0L+0 
;Pratica2.c,35 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,36 :: 		while(!PORTB.F0){}
L_main3:
	BTFSC       PORTB+0, 0 
	GOTO        L_main4
	GOTO        L_main3
L_main4:
;Pratica2.c,37 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,38 :: 		}
L_main2:
;Pratica2.c,40 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main5
;Pratica2.c,41 :: 		tempH = 0xFF;
	MOVLW       255
	MOVWF       _tempH+0 
;Pratica2.c,42 :: 		TMR0H = 0xFF;
	MOVLW       255
	MOVWF       TMR0H+0 
;Pratica2.c,43 :: 		tempL = 0x15;
	MOVLW       21
	MOVWF       _tempL+0 
;Pratica2.c,44 :: 		TMR0L = 0x15;
	MOVLW       21
	MOVWF       TMR0L+0 
;Pratica2.c,46 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,47 :: 		while(!PORTB.F1){}
L_main6:
	BTFSC       PORTB+0, 1 
	GOTO        L_main7
	GOTO        L_main6
L_main7:
;Pratica2.c,48 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,49 :: 		}
L_main5:
;Pratica2.c,50 :: 		LATB.F6 = 1;
	BSF         LATB+0, 6 
;Pratica2.c,52 :: 		LATB.F5 = 0;
	BCF         LATB+0, 5 
;Pratica2.c,54 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main8
;Pratica2.c,55 :: 		tempH = 0xFE;
	MOVLW       254
	MOVWF       _tempH+0 
;Pratica2.c,56 :: 		TMR0H = 0xFE;
	MOVLW       254
	MOVWF       TMR0H+0 
;Pratica2.c,57 :: 		tempL = 0x9A;
	MOVLW       154
	MOVWF       _tempL+0 
;Pratica2.c,58 :: 		TMR0L = 0x9A;
	MOVLW       154
	MOVWF       TMR0L+0 
;Pratica2.c,60 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,61 :: 		while(!PORTB.F0){}
L_main9:
	BTFSC       PORTB+0, 0 
	GOTO        L_main10
	GOTO        L_main9
L_main10:
;Pratica2.c,62 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,63 :: 		}
L_main8:
;Pratica2.c,65 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main11
;Pratica2.c,66 :: 		tempH = 0xFE;
	MOVLW       254
	MOVWF       _tempH+0 
;Pratica2.c,67 :: 		TMR0H = 0xFE;
	MOVLW       254
	MOVWF       TMR0H+0 
;Pratica2.c,68 :: 		tempL = 0xC1;
	MOVLW       193
	MOVWF       _tempL+0 
;Pratica2.c,69 :: 		TMR0L = 0xC1;
	MOVLW       193
	MOVWF       TMR0L+0 
;Pratica2.c,71 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,72 :: 		while(!PORTB.F1){}
L_main12:
	BTFSC       PORTB+0, 1 
	GOTO        L_main13
	GOTO        L_main12
L_main13:
;Pratica2.c,73 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,74 :: 		}
L_main11:
;Pratica2.c,76 :: 		if(!PORTB.F2){
	BTFSC       PORTB+0, 2 
	GOTO        L_main14
;Pratica2.c,77 :: 		tempH = 0xFE;
	MOVLW       254
	MOVWF       _tempH+0 
;Pratica2.c,78 :: 		TMR0H = 0xFE;
	MOVLW       254
	MOVWF       TMR0H+0 
;Pratica2.c,79 :: 		tempL = 0xE4;
	MOVLW       228
	MOVWF       _tempL+0 
;Pratica2.c,80 :: 		TMR0L = 0xE4;
	MOVLW       228
	MOVWF       TMR0L+0 
;Pratica2.c,82 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,83 :: 		while(!PORTB.F2){}
L_main15:
	BTFSC       PORTB+0, 2 
	GOTO        L_main16
	GOTO        L_main15
L_main16:
;Pratica2.c,84 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,85 :: 		}
L_main14:
;Pratica2.c,86 :: 		LATB.F5 = 1;
	BSF         LATB+0, 5 
;Pratica2.c,88 :: 		LATB.F4 = 0;
	BCF         LATB+0, 4 
;Pratica2.c,90 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main17
;Pratica2.c,91 :: 		tempH = 0xFE;
	MOVLW       254
	MOVWF       _tempH+0 
;Pratica2.c,92 :: 		TMR0H = 0xFE;
	MOVLW       254
	MOVWF       TMR0H+0 
;Pratica2.c,93 :: 		tempL = 0x1E;
	MOVLW       30
	MOVWF       _tempL+0 
;Pratica2.c,94 :: 		TMR0L = 0x1E;
	MOVLW       30
	MOVWF       TMR0L+0 
;Pratica2.c,96 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,97 :: 		while(!PORTB.F0){}
L_main18:
	BTFSC       PORTB+0, 0 
	GOTO        L_main19
	GOTO        L_main18
L_main19:
;Pratica2.c,98 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,99 :: 		}
L_main17:
;Pratica2.c,101 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main20
;Pratica2.c,102 :: 		tempH = 0xFE;
	MOVLW       254
	MOVWF       _tempH+0 
;Pratica2.c,103 :: 		TMR0H = 0xFE;
	MOVLW       254
	MOVWF       TMR0H+0 
;Pratica2.c,104 :: 		tempL = 0x56;
	MOVLW       86
	MOVWF       _tempL+0 
;Pratica2.c,105 :: 		TMR0L = 0x56;
	MOVLW       86
	MOVWF       TMR0L+0 
;Pratica2.c,107 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,108 :: 		while(!PORTB.F1){}
L_main21:
	BTFSC       PORTB+0, 1 
	GOTO        L_main22
	GOTO        L_main21
L_main22:
;Pratica2.c,109 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,110 :: 		}
L_main20:
;Pratica2.c,112 :: 		if(!PORTB.F2){
	BTFSC       PORTB+0, 2 
	GOTO        L_main23
;Pratica2.c,113 :: 		tempH = 0xFE;
	MOVLW       254
	MOVWF       _tempH+0 
;Pratica2.c,114 :: 		TMR0H = 0xFE;
	MOVLW       254
	MOVWF       TMR0H+0 
;Pratica2.c,115 :: 		tempL = 0x85;
	MOVLW       133
	MOVWF       _tempL+0 
;Pratica2.c,116 :: 		TMR0L = 0x85;
	MOVLW       133
	MOVWF       TMR0L+0 
;Pratica2.c,118 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,119 :: 		while(!PORTB.F2){}
L_main24:
	BTFSC       PORTB+0, 2 
	GOTO        L_main25
	GOTO        L_main24
L_main25:
;Pratica2.c,120 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,121 :: 		}
L_main23:
;Pratica2.c,122 :: 		LATB.F4 = 1;
	BSF         LATB+0, 4 
;Pratica2.c,123 :: 		}
	GOTO        L_main0
;Pratica2.c,126 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
