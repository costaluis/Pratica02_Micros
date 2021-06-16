#line 1 "Z:/home/luis/Documents/AplicacoesDeMicros/Pratica2/Pratica2.c"
char tempL, tempH;

void high_int() iv 0x0008 ics ICS_AUTO{
 LATC.F2 = !LATC.F2;
 TMR0H = tempH;
 TMR0L = tempL;
 INTCON.f2 = 0;
}


void main() {
 ADCON1 = 0x0F;
 TRISB = 0x0F;
 TRISC = 0x00;

 INTCON = 0b11100000;
 INTCON2.F7 = 0;

 LATB.F7 = 1;
 LATB.F6 = 1;
 LATB.F5 = 1;
 LATB.F4 = 1;

 T0CON = 0b00001000;

 while(1){
 LATB.F6 = 0;

 if(!PORTB.F0){
 tempH = 0xFF;
 TMR0H = 0xFF;
 tempL = 0x03;
 TMR0L = 0x03;

 T0CON.F7 = 1;
 while(!PORTB.F0){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F1){
 tempH = 0xFF;
 TMR0H = 0xFF;
 tempL = 0x15;
 TMR0L = 0x15;

 T0CON.F7 = 1;
 while(!PORTB.F1){}
 T0CON.F7 = 0;
 }
 LATB.F6 = 1;

 LATB.F5 = 0;

 if(!PORTB.F0){
 tempH = 0xFE;
 TMR0H = 0xFE;
 tempL = 0x9A;
 TMR0L = 0x9A;

 T0CON.F7 = 1;
 while(!PORTB.F0){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F1){
 tempH = 0xFE;
 TMR0H = 0xFE;
 tempL = 0xC1;
 TMR0L = 0xC1;

 T0CON.F7 = 1;
 while(!PORTB.F1){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F2){
 tempH = 0xFE;
 TMR0H = 0xFE;
 tempL = 0xE4;
 TMR0L = 0xE4;

 T0CON.F7 = 1;
 while(!PORTB.F2){}
 T0CON.F7 = 0;
 }
 LATB.F5 = 1;

 LATB.F4 = 0;

 if(!PORTB.F0){
 tempH = 0xFE;
 TMR0H = 0xFE;
 tempL = 0x1E;
 TMR0L = 0x1E;

 T0CON.F7 = 1;
 while(!PORTB.F0){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F1){
 tempH = 0xFE;
 TMR0H = 0xFE;
 tempL = 0x56;
 TMR0L = 0x56;

 T0CON.F7 = 1;
 while(!PORTB.F1){}
 T0CON.F7 = 0;
 }

 if(!PORTB.F2){
 tempH = 0xFE;
 TMR0H = 0xFE;
 tempL = 0x85;
 TMR0L = 0x85;

 T0CON.F7 = 1;
 while(!PORTB.F2){}
 T0CON.F7 = 0;
 }
 LATB.F4 = 1;
 }


}
