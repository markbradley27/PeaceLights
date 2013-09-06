avr-gcc -g -Os -Wall -mcall-prologues -std=c99 -mmcu=attiny85 -c -o %1.o %1.c
avr-gcc -g -Os -Wall -mcall-prologues -std=c99 -mmcu=attiny85 %1.o -o %1.obj
avr-objcopy -R .eeprom -O ihex %1.obj %1.hex