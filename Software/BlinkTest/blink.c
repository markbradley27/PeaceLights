#define __AVR_ATtiny85__
#define F_CPU 16000000UL

#include <stdlib.h>
#include <avr/io.h>
#include <util/delay.h>
#include "WS2811.h"

DEFINE_WS2811_FN(WS2811RGB, PORTB, 0);

typedef void (*function_type)(RGB_t*, int);

void set_red (RGB_t* rgb, int i) {
	rgb[i].r = 128;
	rgb[i].g = 0;
	rgb[i].b = 0;
}

void set_green (RGB_t* rgb, int i) {
	rgb[i].r = 0;
	rgb[i].g = 128;
	rgb[i].b = 0;
}

void set_blue (RGB_t* rgb, int i) {
	rgb[i].r = 0;
	rgb[i].g = 0;
	rgb[i].b = 128;
}


void random_colors(RGB_t* rgb, function_type* function_pointers) {
	for (int i = 0; i < 4; i++) {
		int j = i % 3;
		function_pointers[j](rgb, i);
	}
	WS2811RGB(rgb, ARRAYLEN(rgb));
	_delay_ms(900);


	for (int i = 0; i < 4; i++) {
		rgb[i].r = 0;
		rgb[i].g = 0;
		rgb[i].b = 0;
	}
	WS2811RGB(rgb, ARRAYLEN(rgb));
	_delay_ms(100);
}

void blink_blue(RGB_t* rgb, function_type* function_pointers) {
	function_pointers[2](rgb, 0);
	WS2811RGB(rgb, ARRAYLEN(rgb));
	_delay_ms(900);

	for (int i = 0; i < 4; i++) {
		rgb[i].r = 0;
		rgb[i].g = 0;
		rgb[i].b = 0;
	}
	WS2811RGB(rgb, ARRAYLEN(rgb));
	_delay_ms(100);
}

int main(void) {
	DDRB |= 0x01;
	PORTB &= ~0x01;
	RGB_t rgb[4];
	for (int i = 0; i < 4; i++) {
		rgb[i].r = 0;
		rgb[i].g = 0;
		rgb[i].b = 0;
	}

	function_type funcs[3] = {set_red, set_blue, set_green};

	while(1) {
		blink_blue(rgb, funcs);
	}
}


