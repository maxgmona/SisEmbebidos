#include <Arduino.h>
#include<stdlib.h>
#define LIMIT_X=0
#define LIMIT_Y=0





































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
















return 0;
}

void inline movimiento(){

//se mueve hacia arriba
if (PINC&(1<<PC0)){
persona.pos_y+=1;

}
//se mueve hacia abajo
if (PINC&(1<<PC1)){
persona.pos_y-=1;

}
//se mueve hacia la derecha 
if (PINC&(1<<PC2)){
persona.pos_x+=1;

}
//se mueve hacia la izquierda
if (PINC&(1<<PC3)){
persona.pos_x+=1;

}
}
