#define DO 262
#define RE 294
#define MI 330
#define FA 349
#define SOL 392
#define LA 220
#define SI 494
#define LAS 233
#define FAS 370
#define SOLS 418
#define TIME 500
#define DCA 523

void move();
void explote();
void gameover();
void win();

int cnt = 0;
int flag = 0;

void main() {
     ANSEL = 0;
     ANSELH = 0;
     C1ON_bit = 0;
     C2ON_bit = 0;
     TRISC = 0x00;
     TRISD = 0x00;
     TRISB = 0x07;
     
     Sound_Init(&PORTE,0);
     
     while(1)
     {
      if(PORTB.F0 = 1){
       flag = 1;
       if(!(PORTB.F1 = 1) & !(PORTB.F2 = 1)){
         move();
       }
       if(!(PORTB.F1 = 1) & (PORTB.F2 = 1)){
         explote();
       }
       if((PORTB.F1 = 1) & !(PORTB.F2 = 1)){
         gameover();
       }
       if((PORTB.F1 = 1) & (PORTB.F2 = 1)){
          win();
       }
      }
     }
}

void gameover() {
     int i = 0;
     int y = 0;
     int tonada [] = {
        50,85,70,125,325,195,63,84
     };
     for (i=0; i< 9; i++){
         int tiempo = 0;
         if (i == 0 || i == 9){
             tiempo = 20;
         }
         else {
              tiempo = TIME;
         }
         Sound_play(tonada[i],tiempo);
         Delay_ms(50);
     }
}

void move() {
     int i = 0;
     int y = 0;
     int tonada [] = {
        SI,FAS
     };
     for (i=0; i< 2; i++){
         int tiempo = 0;
         if (i == 0 || i == 2){
             tiempo = 20;
         }
         else {
              tiempo = TIME;
         }
         Sound_play(tonada[i],tiempo);
         Delay_ms(30);
     }
}

void explote() {
     int i = 0;
     int y = 0;
     int tonada [] = {
        220,246
     };
     for (i=0; i< 2; i++){
         int tiempo = 0;
         if (i == 0 || i == 2){
             tiempo = 0.1;
         }
         else {
              tiempo = TIME;
         }
         Sound_play(tonada[i],tiempo);
         Delay_ms(2);
     }
}

void win() {
     int i = 0;
     int y = 0;
     int tonada [] = {
        25,6,99,6,3,62,51,5,2
     };
     for (i=0; i< 11; i++){
         int tiempo = 0;
         if (i == 0 || i == 9){
             tiempo = 20;
         }
         else {
              tiempo = TIME;
         }
         Sound_play(tonada[i],tiempo);
         Delay_ms(100);
     }
}