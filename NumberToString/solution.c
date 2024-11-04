#include <stdlib.h>
#include <stdio.h>

char *number_to_string(int number) {
    char *str = (char *)malloc(12 * sizeof(char));
    if (str == NULL) {
        return NULL; // Return NULL if allocation fails
    }

    sprintf(str, "%d", number);

    return str;
}