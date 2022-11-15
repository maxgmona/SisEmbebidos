#line 1 "R:/Documentos/Sistemas_Embebidos/Tareas/Juego-Mina/SisEmbebidos/SOUND/Sonidos.c"
#line 14 "R:/Documentos/Sistemas_Embebidos/Tareas/Juego-Mina/SisEmbebidos/SOUND/Sonidos.c"
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
 for (i=0; i< 8; i++){
 int tiempo = 0;
 if (i == 0 || i == 8){
 tiempo = 20;
 }
 else {
 tiempo =  500 ;
 }
 Sound_play(tonada[i],tiempo);
 Delay_ms(50);
 }
}

void move() {
 int i = 0;
 int y = 0;
 int tonada [] = {
 500,600,40,20
 };
 for (i=0; i< 4; i++){
 int tiempo = 0;
 if (i == 0 || i == 4){
 tiempo = 20;
 }
 else {
 tiempo =  500 ;
 }
 Sound_play(tonada[i],tiempo);
 Delay_ms(30);
 }
}

void explote() {
 int i = 0;
 int y = 0;
 int tonada [] = {
  262 , 262 , 294 , 262 
 };
 for (i=0; i< 4; i++){
 int tiempo = 0;
 if (i == 0 || i == 4){
 tiempo = 10;
 }
 else {
 tiempo =  500 ;
 }
 Sound_play(tonada[i],tiempo);
 Delay_ms(10);
 }
}

void win() {
 int i = 0;
 int y = 0;
 int tonada [] = {
 250,60,990,60,30,620,510,50,20
 };
 for (i=0; i< 9; i++){
 int tiempo = 0;
 if (i == 0 || i == 9){
 tiempo = 20;
 }
 else {
 tiempo =  500 ;
 }
 Sound_play(tonada[i],tiempo);
 Delay_ms(100);
 }
}
