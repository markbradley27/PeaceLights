#define __AVR_ATtiny85__
#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>



int main(void) {
  DDRB |= 0x02;

  while(1) {
  	PORTB |= 0x02;
  	_delay_ms(500);
  	PORTB &= ~0x02;
  	_delay_ms(500);
  }
}