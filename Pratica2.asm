
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
L__high_int27:
	RETFIE      1
; end of _high_int

_main:

;Pratica2.c,10 :: 		void main() {
;Pratica2.c,11 :: 		ADCON1 = 0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;Pratica2.c,12 :: 		TRISB = 0x0F;
	MOVLW       15
	MOVWF       TRISB+0 
;Pratica2.c,13 :: 		TRISC = 0x00;
	CLRF        TRISC+0 
;Pratica2.c,15 :: 		INTCON = 0b11100000;
	MOVLW       224
	MOVWF       INTCON+0 
;Pratica2.c,16 :: 		INTCON2.F7 = 0;
	BCF         INTCON2+0, 7 
;Pratica2.c,18 :: 		LATB.F7 = 1;
	BSF         LATB+0, 7 
;Pratica2.c,19 :: 		LATB.F6 = 1;
	BSF         LATB+0, 6 
;Pratica2.c,20 :: 		LATB.F5 = 1;
	BSF         LATB+0, 5 
;Pratica2.c,21 :: 		LATB.F4 = 1;
	BSF         LATB+0, 4 
;Pratica2.c,23 :: 		T0CON = 0b01000000;
	MOVLW       64
	MOVWF       T0CON+0 
;Pratica2.c,25 :: 		while(1){
L_main0:
;Pratica2.c,26 :: 		LATB.F6 = 0;
	BCF         LATB+0, 6 
;Pratica2.c,28 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Pratica2.c,29 :: 		temp = 129;
	MOVLW       129
	MOVWF       _temp+0 
;Pratica2.c,30 :: 		TMR0L = 129;
	MOVLW       129
	MOVWF       TMR0L+0 
;Pratica2.c,31 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,32 :: 		while(!PORTB.F0){}
L_main3:
	BTFSC       PORTB+0, 0 
	GOTO        L_main4
	GOTO        L_main3
L_main4:
;Pratica2.c,33 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,34 :: 		}
L_main2:
;Pratica2.c,36 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main5
;Pratica2.c,37 :: 		temp = 135;
	MOVLW       135
	MOVWF       _temp+0 
;Pratica2.c,38 :: 		TMR0L = 135;
	MOVLW       135
	MOVWF       TMR0L+0 
;Pratica2.c,39 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,40 :: 		while(!PORTB.F1){}
L_main6:
	BTFSC       PORTB+0, 1 
	GOTO        L_main7
	GOTO        L_main6
L_main7:
;Pratica2.c,41 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,42 :: 		}
L_main5:
;Pratica2.c,43 :: 		LATB.F6 = 1;
	BSF         LATB+0, 6 
;Pratica2.c,45 :: 		LATB.F5 = 0;
	BCF         LATB+0, 5 
;Pratica2.c,47 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main8
;Pratica2.c,48 :: 		temp = 77;
	MOVLW       77
	MOVWF       _temp+0 
;Pratica2.c,49 :: 		TMR0L = 77;
	MOVLW       77
	MOVWF       TMR0L+0 
;Pratica2.c,50 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,51 :: 		while(!PORTB.F0){}
L_main9:
	BTFSC       PORTB+0, 0 
	GOTO        L_main10
	GOTO        L_main9
L_main10:
;Pratica2.c,52 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,53 :: 		}
L_main8:
;Pratica2.c,55 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main11
;Pratica2.c,56 :: 		temp = 97;
	MOVLW       97
	MOVWF       _temp+0 
;Pratica2.c,57 :: 		TMR0L = 97;
	MOVLW       97
	MOVWF       TMR0L+0 
;Pratica2.c,58 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,59 :: 		while(!PORTB.F1){}
L_main12:
	BTFSC       PORTB+0, 1 
	GOTO        L_main13
	GOTO        L_main12
L_main13:
;Pratica2.c,60 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,61 :: 		}
L_main11:
;Pratica2.c,63 :: 		if(!PORTB.F2){
	BTFSC       PORTB+0, 2 
	GOTO        L_main14
;Pratica2.c,64 :: 		temp = 114;
	MOVLW       114
	MOVWF       _temp+0 
;Pratica2.c,65 :: 		TMR0L = 114;
	MOVLW       114
	MOVWF       TMR0L+0 
;Pratica2.c,66 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,67 :: 		while(!PORTB.F2){}
L_main15:
	BTFSC       PORTB+0, 2 
	GOTO        L_main16
	GOTO        L_main15
L_main16:
;Pratica2.c,68 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,69 :: 		}
L_main14:
;Pratica2.c,70 :: 		LATB.F5 = 1;
	BSF         LATB+0, 5 
;Pratica2.c,72 :: 		LATB.F4 = 0;
	BCF         LATB+0, 4 
;Pratica2.c,74 :: 		if(!PORTB.F0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main17
;Pratica2.c,75 :: 		temp = 15;
	MOVLW       15
	MOVWF       _temp+0 
;Pratica2.c,76 :: 		TMR0L = 15;
	MOVLW       15
	MOVWF       TMR0L+0 
;Pratica2.c,77 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,78 :: 		while(!PORTB.F0){}
L_main18:
	BTFSC       PORTB+0, 0 
	GOTO        L_main19
	GOTO        L_main18
L_main19:
;Pratica2.c,79 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,80 :: 		}
L_main17:
;Pratica2.c,82 :: 		if(!PORTB.F1){
	BTFSC       PORTB+0, 1 
	GOTO        L_main20
;Pratica2.c,83 :: 		temp = 43;
	MOVLW       43
	MOVWF       _temp+0 
;Pratica2.c,84 :: 		TMR0L = 43;
	MOVLW       43
	MOVWF       TMR0L+0 
;Pratica2.c,85 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,86 :: 		while(!PORTB.F1){}
L_main21:
	BTFSC       PORTB+0, 1 
	GOTO        L_main22
	GOTO        L_main21
L_main22:
;Pratica2.c,87 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,88 :: 		}
L_main20:
;Pratica2.c,90 :: 		if(!PORTB.F2){
	BTFSC       PORTB+0, 2 
	GOTO        L_main23
;Pratica2.c,91 :: 		temp = 66;
	MOVLW       66
	MOVWF       _temp+0 
;Pratica2.c,92 :: 		TMR0L = 66;
	MOVLW       66
	MOVWF       TMR0L+0 
;Pratica2.c,93 :: 		T0CON.F7 = 1;
	BSF         T0CON+0, 7 
;Pratica2.c,94 :: 		while(!PORTB.F2){}
L_main24:
	BTFSC       PORTB+0, 2 
	GOTO        L_main25
	GOTO        L_main24
L_main25:
;Pratica2.c,95 :: 		T0CON.F7 = 0;
	BCF         T0CON+0, 7 
;Pratica2.c,96 :: 		}
L_main23:
;Pratica2.c,97 :: 		LATB.F4 = 1;
	BSF         LATB+0, 4 
;Pratica2.c,98 :: 		}
	GOTO        L_main0
;Pratica2.c,101 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
