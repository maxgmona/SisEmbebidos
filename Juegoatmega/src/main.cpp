#include <Arduino.h>
#include <stdlib.h>
#define LIMIT_Y=8
#define LIMIT_X=8
uint8_t PORT[8]={1,2,4,8,16,32,64};

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