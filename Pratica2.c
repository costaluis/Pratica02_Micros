char temp;

void high_int() iv 0x0008 ics ICS_AUTO{
    LATC.F2 = !LATC.F2;
    TMR0L = temp;
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

    T0CON = 0b01000000;

    while(1){
        LATB.F6 = 0;
        //Tecla 7
        if(!PORTB.F0){
            temp = 129;
            TMR0L = 129;
            T0CON.F7 = 1;
            while(!PORTB.F0){}
            T0CON.F7 = 0;
        }
        //Tecla 8
        if(!PORTB.F1){
            temp = 135;
            TMR0L = 135;
            T0CON.F7 = 1;
            while(!PORTB.F1){}
            T0CON.F7 = 0;
        }
        LATB.F6 = 1;

        LATB.F5 = 0;
        //Tecla 4
        if(!PORTB.F0){
            temp = 77;
            TMR0L = 77;
            T0CON.F7 = 1;
            while(!PORTB.F0){}
            T0CON.F7 = 0;
        }
        //Tecla 5
        if(!PORTB.F1){
            temp = 97;
            TMR0L = 97;
            T0CON.F7 = 1;
            while(!PORTB.F1){}
            T0CON.F7 = 0;
        }
        //Tecla 6
        if(!PORTB.F2){
            temp = 114;
            TMR0L = 114;
            T0CON.F7 = 1;
            while(!PORTB.F2){}
            T0CON.F7 = 0;
        }
        LATB.F5 = 1;

        LATB.F4 = 0;
        //Tecla 1
        if(!PORTB.F0){
            temp = 15;
            TMR0L = 15;
            T0CON.F7 = 1;
            while(!PORTB.F0){}
            T0CON.F7 = 0;
        }
        //Tecla 2
        if(!PORTB.F1){
            temp = 43;
            TMR0L = 43;
            T0CON.F7 = 1;
            while(!PORTB.F1){}
            T0CON.F7 = 0;
        }
        //Tecla 3
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