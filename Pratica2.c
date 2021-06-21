//Variável que armazena o valor inicial do contador do timer
//para determinada frequência/tecla
char temp;

//Função de interrupção
void high_int() iv 0x0008 ics ICS_AUTO{
    //Realiza a inversão da saída ligada ao buzzer
    LATC.F2 = !LATC.F2;
    //Recarrega o valor inicial do contador do timer
    TMR0L = temp;
    //Reseta a flag de interrupção do timer
    INTCON.f2 = 0;
}


void main() {
    //Seta portas como digitais
    //Seta Vdd e Vss como referência
    ADCON1 = 0x0F;

    //Bits mais significativos configurados como saída
    //Bits menos significativos configurados como entrada
    TRISB = 0x0F;

    //Bits da porta C configurados como saída
    TRISC = 0x00;

    //Habilita as interrupções de timer
    INTCON = 0b11100000;

    //Habilita o resistor pull-up da porta B
    INTCON2.F7 = 0;

    //Seta os valores iniciais dos bits mais signifitivos
    LATB.F7 = 1;
    LATB.F6 = 1;
    LATB.F5 = 1;
    LATB.F4 = 1;

    //Configura o timer para 8 bits com prescale 1:2
    T0CON = 0b01000000;

    //Inicia a varredura
    while(1){
        //Coloca nível lógico low em uma das linhas
        LATB.F6 = 0;
        
        //Verificação da Tecla 7
        if(!PORTB.F0){
            //Atribui valor para o contador do timer
            temp = 129;
            TMR0L = 129;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F0){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }

        //Verificação da Tecla 8
        if(!PORTB.F1){
            //Atribui valor para o contador do timer
            temp = 135;
            TMR0L = 135;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F1){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }
        //Coloca nível lógico high em uma das linhas
        LATB.F6 = 1;

        //Coloca nível lógico low em uma das linhas
        LATB.F5 = 0;

        //Verificação da Tecla 4
        if(!PORTB.F0){
            //Atribui valor para o contador do timer
            temp = 77;
            TMR0L = 77;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F0){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }

        //Verificação da Tecla 5
        if(!PORTB.F1){
            //Atribui valor para o contador do timer
            temp = 97;
            TMR0L = 97;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F1){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }

        //Verificação da Tecla 6
        if(!PORTB.F2){
            //Atribui valor para o contador do timer
            temp = 114;
            TMR0L = 114;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F2){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }
        //Coloca nível lógico high em uma das linhas
        LATB.F5 = 1;

        //Coloca nível lógico low em uma das linhas
        LATB.F4 = 0;

        //Verificação da Tecla 1
        if(!PORTB.F0){
            //Atribui valor para o contador do timer
            temp = 15;
            TMR0L = 15;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F0){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }

        //Verificação da Tecla 2
        if(!PORTB.F1){
            //Atribui valor para o contador do timer
            temp = 43;
            TMR0L = 43;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F1){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }

        //Verificação da Tecla 3
        if(!PORTB.F2){
            //Atribui valor para o contador do timer
            temp = 66;
            TMR0L = 66;
            //Inicia contagem do timer
            T0CON.F7 = 1;
            //Aguarda enquanto o botão é pressionado...
            while(!PORTB.F2){}
            //Desliga a contagem do timer
            T0CON.F7 = 0;
        }
        //Coloca nível lógico high em uma das linhas
        LATB.F4 = 1;
    }
}