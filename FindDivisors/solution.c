#include <stddef.h>

//  assign divisors to array[]
//  set *length to the number of divisors

void divisors(unsigned n, size_t *length, unsigned array[]) {
    *length = 0; // Initialize length to 0

    // Find divisors of n
    for (unsigned i = 2; i < n; i++) {
        if (n % i == 0) {
            array[*length] = i; // Assign divisor to array
            (*length)++; // Increment length
        }
    }
}