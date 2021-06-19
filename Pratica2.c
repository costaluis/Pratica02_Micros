unsigned char temp=0xFF;

void high_int() iv 0x0008 ics ICS_AUTO{
    LATC.F2 = !LATC.F2;
    TMR0L = temp;
    INTCON.f2 = 0;
}



void low_int() iv 0x0018 ics ICS_AUTO {
    if(!PORTB.F0){
        if(!PORTB.F4){
            temp = 15;
            T0CON.F7 = 1;
        }
        if(!PORTB.F5){
            temp = 77;
            T0CON.F7 = 1;
        }
        if(!PORTB.F6){
            temp = 129;
            T0CON.F7 = 1;
        }
    }
    else{
        if(!PORTB.F1){
            if(!PORTB.F4){
                temp = 43;
                T0CON.F7 = 1;
            }
            if(!PORTB.F5){
                temp = 97;
                T0CON.F7 = 1;
            }
            if(!PORTB.F6){
                temp = 135;
                T0CON.F7 = 1;
            }
        }
        else{
            if(!PORTB.F2){
                if(!PORTB.F4){
                    temp = 66;
                    T0CON.F7 = 1;
                }
                if(!PORTB.F5){
                    temp = 114;
                    T0CON.F7 = 1;
                }
            }
            else{
                T0CON.F7 = 0;
            }
        }
    }
    INTCON.F0 = 0;
}

void main() {
    ADCON1 = 0x0F;
    TRISB = 0xF0;
    TRISC = 0x00;
    RCON.IPEN = 1;

    INTCON = 0b11101000;
    INTCON2.F7 = 0;
    INTCON2.F2 = 1;
    INTCON2.F0 = 0; 

    LATB.F3 = 1;
    LATB.F2 = 1;
    LATB.F1 = 1;
    LATB.F0 = 1;

    T0CON = 0b01010000;

    while(1){
        LATB.F2 = !LATB.F2;
        Delay_ms(100);
        LATB.F2 = !LATB.F2;

        LATB.F1 = !LATB.F1;
        Delay_ms(100);
        LATB.F1 = !LATB.F1;


        LATB.F0 = !LATB.F0;
        Delay_ms(100);
        LATB.F0 = !LATB.F0; 


    }

}