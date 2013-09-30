#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>
#include "WS2811.h"

#define BIT(B)           (0x01 << (uint8_t)(B))
#define SET_BIT_HI(V, B) (V) |= (uint8_t)BIT(B)
#define SET_BIT_LO(V, B) (V) &= (uint8_t)~BIT(B)

#define PAUSE  1000     // msec
#define DELAY    10  	// msec
#define NUMPIX   18

// Define the output function, using pin 0 on port b.
DEFINE_WS2811_FN(WS2811RGB, PORTB, 0);


void set_animation_queue(int animation_queue_index, int* num_animations_in_queue, int** animation_configs, void (*)(RGB_t*, int*) animation_ticks);
void larson_config_constructor(int* config);
void larson_tick(RGB_t* rgb, int* config);


int main() {
    //Initialize ports
    SET_BIT_HI(DDRB, 0);
    SET_BIT_LO(PORTB, 0);

    // Initialize buffer
    RGB_t rgb[NUMPIX];

    // Initialize animation data structures
    int animation_queue_index = 0;   // index for list of animation queues
    int num_animations_in_queue = 0;
    int** animation_configs;
    void (*animation_ticks[10])(RGB_t*, int*);

    // Queue up initial animation tick functions
    set_animation_queue(animation_queue_index, num_animations_in_queue, animation_configs, animation_ticks);

    //Loop forever
    while(1) {
        // Reset pixel array
        for (int i = 0; i < NUMPIX; i++) {
            rgb[i].r = 0;
            rgb[i].g = 0;
            rgb[i].b = 0;
        }

        // If button input
            //set_animation_queue();

        for (int i = 0; i < num_animations_in_queue; i++) {
            (*animation_ticks[i])(rgb, animation_configs[i]);
        }

        // Push buffer to pixels
        WS2811RGB(rgb, ARRAYLEN(rgb));

        // Delay
        _delay_ms(10);
    }
}

void set_animation_queue(int animation_queue_index, int num_animations_in_queue, int** animation_configs, void (*)(RGB_t*, int*) (animation_ticks)) {
    switch (current_animation_queue_index) {
        //Case 0: one Larson scanner
        case 0:
            // Set num animations in queue
            num_animations_in_queue = 1;
            // Allocate configs array
            animation_configs = new int*[1];
            animation_configs = malloc(1 * sizeof())
            // Construct configs
            larson_config_constructor(animation_configs[0])
            break;
    }
}


void larson_config_constructor(int* config) {
    // 5 ints, r, g, b, location, direction, speed, tail
    config = malloc(7 * sizeof(*config));
    config[0] = 255;    //r
    config[1] = 0;      //g
    config[2] = 0;      //b
    config[3] = 0;      //location
    config[4] = 1;      //direction
    config[5] = 1;      //speed
    config[6] = 0;      //tail
}


void larson_tick(RGB_t* rgb, int* config) {
    // Increment location
    // location += speed * direction
    config[3] += config[5] * config[4];
    // Add color to buffer
    for(int i = 0; i < 12; i++) {
        if (i == config[3]) {
            rgb[i].r += config[0];
            rgb[i].g += config[1];
            rgb[i].b += config[2];
        }
    }
}