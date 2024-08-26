#include <stddef.h>

size_t countBits(unsigned value) {
    int amount_of_bits = 0; // Create a counter for the amount of bits found

    while (value >= 1) { // Apply binary conversion to find all 1s
        int remainder = value - (value / 2) * 2;
        // If the remainder is a 1, add it to the amount of bits

        if (remainder == 1) {
            amount_of_bits++;
        }

        value /= 2; // Divide by 2 to continue the loop
    }

	return amount_of_bits; // When the loop ends, return the count of bits
}