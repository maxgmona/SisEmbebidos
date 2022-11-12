#include <Arduino.h>
#include<stdlib.h>
#define LIMIT_X=0
#define LIMIT_Y=0






char PORT[8]={128,64,32,16,8,4,2,1};
char COLUMNA[8]={1,2,4,8,16,32,64,128};
 


uint8_t win[] = {
    0x0,	0x0,	0x0,	0x0,	0x0,	0x0,	0x0,	0x0,
    0x0,	0x0,	0x0,	0x0,	0x80,	0x0,	0x0,	0x0,
    0x0,	0x0,	0x0,	0x0,	0x40,	0x0,	0x0,	0x0,
    0x0,	0x0,	0x0,	0x0,	0x20,	0x0,	0x0,	0x0,
    0x0,	0x0,	0x0,	0x0,	0x10,	0x0,	0x0,	0x0,
    0x0,	0x0,	0x0,	0x18,	0x18,	0x0,	0x0,	0x0,
    0x0,	0x0,	0x18,	0x24,	0x24,	0x18,	0x0,	0x0,
    0x0,	0x18,	0x24,	0x5A,	0x5A,	0x24,	0x18,	0x0,
    0x18,	0x24,	0x5A,	0xA5,   0xA5,	0x5A,	0x24,	0x18,
    0x3C,	0x42,	0x81,	0x99,	0x99,	0x81,	0x42,	0x3C,
    0x7E,	0x81,	0xA5,	0x99,	0x99,	0xA5,	0x81,	0x7E,
    0x5A,	0xC3,	0x24,	0x81,	0x81,	0x24,	0xC3,	0x5A,
    0x81,	0x5A,	0x0,	0x5A,	0x5A,	0x0,	0x5A,	0x81,
    0x99,	0x0,	0x24,	0x99,	0x99,	0x24,	0x0,	0x99,
    0x0,	0x42,	0x24,	0x0,	0x0,	0x24,	0x42,	0x0,
    0x81,	0x42,	0x0,	0x0,	0x0,	0x0,	0x42,	0x81,
    0x81,	0x0,	0x0,	0x0,	0x0,	0x0,	0x0,	0x81,
    0x42,	0xC3,	0x0,	0x0,	0x0,	0x0,	0xC3,	0x42,
    0xA5,	0x42,	0x81,	0x0,	0x0,	0x81,	0x42,	0xA5,
    0x5A,	0xA5,	0x42,	0x81,	0x81,	0x42,	0xA5,	0x5A,
    0xA5,	0x5A,	0xA5,	0x42,	0x42,	0xA5,	0x5A,	0xA5,
    0x5A,	0xA5,	0x5A,	0xA5,	0xA5,	0x5A,	0xA5,	0x5A,
    0xAA,	0x55,	0xAA,	0x55,	0xAA,	0x55,	0xAA,	0x55,  //ajedrez 01
    0x55,	0xAA,	0x55,	0xAA,	0x55,	0xAA,	0x55,	0xAA,  //ajedrez 10
    0xA5,	0x42,	0xA5,	0x0,	0x0,	0xA5,	0x42,	0xA5,
    0xA5,	0x0,	0x81,	0x0,	0x0,	0x81,	0x0,	0xA5,
    0x0,	0x0,	0x0,	0x0,	0x0,	0x0,	0x0,	0x0,
    0x10,	0x36,	0x46,	0x40,	0x40,	0x46,	0x36,	0x10    //Carita Feliz
};

uint8_t gameOver[] = {
    0x81,	0xFF,	0x42,	0x18,	0x18,	0x42,	0xFF,	0x81,   //X
    0x7E,	0x3C,	0x99,	0xE7,	0xE7,	0x99,	0x3C,	0x7E    //X negative
};

uint8_t clearMatriz[] = {
    0x0,	0x0,	0x0,	0x0,	0x0,	0x0,	0x0,	0x0     //Espacio en Blanco
};

void MostrarWin(){
    while(1){
        for(int i=0; i<8; i++){
            PORTD = PORT[i];
            PORTB = ~(win[i]);
            _delay_ms(Delay)
        }
    }






















void inline movimiento(int *pos_x,int *pos_y){

//se mueve hacia arriba
if (PINC&(1<<PC0)){
 if(*pos_y<8){
   pos_y+=1;
 }


}
//se mueve hacia abajo
if (PINC&(1<<PC1)){
 if(*pos_y<8){
   pos_y-=1;
 }
}
//se mueve hacia la derecha 
if (PINC&(1<<PC2)){
   if(*pos_x<8){
    pos_x+=1;
 }


}
//se mueve hacia la izquierda
if (PINC&(1<<PC3)){
   if(*pos_x<8){
   pos_x-=1;
 }

}






















void inline movimiento(int *pos_x,int *pos_y);

int main(){
 DDRB=0xff;
 DDRD=0xff;


typedef struct{
  int *pos_x;
  int *pos_y;
}jugador;
jugador persona ;
persona.pos_x=0;
persona.pos_y=0;

typedef struct{
  int *pos_x;
  int *pos_y;
}bombas;

bombas  bomba[15];
for (int i=0;i<15;i++){
  bomba[i].pos_x=rand() % (LIMIT_X-2)+1;
  bomba[i].pos_y=rand() % (LIMIT_Y-2)+1;
}




while (1){
  movimiento(persona.pos_x,persona.pos_y);
  PORTB=PORT[];
}









return 0;
}


