#line 1 "Z:/home/luis/Documents/AplicacoesDeMicros/Pratica2/Pratica2.c"
unsigned char temp;

void high_int() iv 0x0008 ics ICS_AUTO{
 LATC.F2 = !LATC.F2;
 TMR0L = temp;
 INTCON.f2 = 0;
}

void low_int() iv 0x0018 ics ICS_AUTO {
 if(!LATB.F3 && !PORTB.F7){
 temp = 15;
 T0CON.F7 = 1;
 }
}

void main() {
 ADCON1 = 0x0F;
 TRISB = 0xF0;
 TRISC = 0x00;

 INTCON = 0b11100000;
 INTCON2.F7 = 0;
 INTCON2.F2 = 1;
 INTCON2.F0 = 0;

 LATB.F3 = 1;
 LATB.F2 = 1;
 LATB.F1 = 1;
 LATB.F0 = 1;

 T0CON = 0b01000000;

 while(1){
 LATB.F3 = !LATB.F3;
 LATB.F3 = !LATB.F3;

 LATB.F2 = !LATB.F2;
 LATB.F2 = !LATB.F2;

 LATB.F1 = !LATB.F1;
 LATB.F1 = !LATB.F1;

 LATB.F0 = !LATB.F0;
 LATB.F0 = !LATB.F0;

 LATB.F6 = 0;

 if(!PORTB.F0){
 temp = 129;
 TMR0L = 129;
 T0CON.F7 = 1;
 while(!PORTB.F0){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F1){
 temp = 135;
 TMR0L = 135;
 T0CON.F7 = 1;
 while(!PORTB.F1){}
 T0CON.F7 = 0;
 }
 LATB.F6 = 1;

 LATB.F5 = 0;

 if(!PORTB.F0){
 temp = 77;
 TMR0L = 77;
 T0CON.F7 = 1;
 while(!PORTB.F0){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F1){
 temp = 97;
 TMR0L = 97;
 T0CON.F7 = 1;
 while(!PORTB.F1){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F2){
 temp = 114;
 TMR0L = 114;
 T0CON.F7 = 1;
 while(!PORTB.F2){}
 T0CON.F7 = 0;
 }
 LATB.F5 = 1;

 LATB.F4 = 0;

 if(!PORTB.F0){
 temp = 15;
 TMR0L = 15;
 T0CON.F7 = 1;
 while(!PORTB.F0){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F1){
 temp = 43;
 TMR0L = 43;
 T0CON.F7 = 1;
 while(!PORTB.F1){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F2){
 temp = 66;
 TMR0L = 66;
 T0CON.F7 = 1;
 while(!PORTB.F2){}
 T0CON.F7 = 0;
 }
 LATB.F4 = 1;
 }


}
