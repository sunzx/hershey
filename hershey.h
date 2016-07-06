#ifndef HERSHEY_H_
#define HERSHEY_H_

#include <stdint.h>

void placechar(char c, uint16_t* px, uint16_t* py, uint32_t color, uint8_t size,
		void (*setpoint)(uint16_t, uint16_t, uint32_t));
void placestring(char* s, uint16_t* px, uint16_t* py, uint32_t color, uint8_t size,
		void (*setpoint)(uint16_t, uint16_t, uint32_t));

uint16_t get_char_width(char c, uint8_t size);
uint16_t get_string_width(char* s, uint8_t size);

void placestring_rj(char* s, uint16_t* px, uint16_t* py, uint32_t color, uint8_t size,
		void (*setpoint)(uint16_t, uint16_t, uint32_t));

#endif /* HERSHEY_H_ */

