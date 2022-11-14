#include <Arduino.h>
#include <stdlib.h>
#define LIMIT_X 8
#define LIMIT_Y 8

int Delay = 10;





char PORT[8]={128,64,32,16,8,4,2,1};
char COLUMNA[8]={1,2,4,8,16,32,64,128};
 




char win[] = {
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
    0x81, 0xFF, 0x42, 0x18, 0x18, 0x42, 0xFF, 0x81, // X
    0x7E, 0x3C, 0x99, 0xE7, 0xE7, 0x99, 0x3C, 0x7E  // X negative
};

uint8_t clearMatriz[] = {
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 // Espacio en Blanco
};

void MostrarWin()
{
  int cont = 0;
  for (int i = 0; i < 2; i++)
  {
    for (int k = 0; k < 20; k++)
    {
      for (int j = 0; j < 8; j++)
      {
        PORTD = PORT[j];
        PORTB = ~(win[j + cont]);
        _delay_ms(1);
      }
    }
    cont = cont + 8;
  }
}

void MostrarGameOver()
{
  int cont = 0;
  for (int i = 0; i < 2; i++)
  {
    for (int k = 0; k < 20; k++)
    {
      for (int j = 0; j < 8; j++)
      {
        PORTD = PORT[j];
        PORTB = ~(gameOver[j + cont]);
        _delay_ms(1);
      }
    }
    cont = cont + 8;
  }
}

void movimiento(int *pos_x, int *pos_y)
{
  int actualX = *pos_x;  
  int actualY = *pos_y;

  // se mueve hacia arriba
  if (!(PINC & (1 << PC0)))
  {
    while (!(PINC & (1 << PC0)))
    {
      /* code */
    }

    if (*pos_y < 7)
    {
      *pos_y -= 1;
    }
  }
  // se mueve hacia abajo
  if (!(PINC & (1 << PC1)))
  {
    while (!(PINC & (1 << PC1)))
    {
      /* code */
    }
    if (*pos_y < 7)
    {
      *pos_y = actualY + 1;
      *pos_x = actualX;
    }
  }
  // se mueve hacia la derecha
  if (!(PINC & (1 << PC2)))
  {
    while (!(PINC & (1 << PC2)))
    {
      /* code */
    }
    if (*pos_x < 7)
    {
      *pos_x += 1;
    }
  }
  // se mueve hacia la izquierda
  if (!(PINC & (1 << PC3)))
  {
    while (!(PINC & (1 << PC3)))
    {
      /* code */
    }
    if (*pos_x < 7)
    {
      *pos_x -= 1;
    }
  }
}



int main()
{
  DDRB = 0xff;
  DDRD = 0xff;

  typedef struct
  {
    int *pos_x;
    int *pos_y;
  } jugador;
  jugador persona;
  persona.pos_x = 0;
  persona.pos_y = 0;

  typedef struct
  {
    int pos_x;
    int pos_y;
  } bombas;

  bombas bomba[15];
  for (int i = 0; i < 15; i++)
  {
    bomba[i].pos_x = rand() % (LIMIT_X - 2) + 1;
    bomba[i].pos_y = rand() % (LIMIT_Y - 2) + 1;
  }

  while (1)
  {
    movimiento(persona.pos_x, persona.pos_y);
    PORTB = ~PORT[*persona.pos_y];
    PORTD = COLUMNA[*persona.pos_x];
    _delay_ms(1);
  }

  return 0;
}
