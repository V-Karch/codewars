#include <ctype.h>
#include <stdbool.h>

bool is_pangram(const char* str_in) {
    bool letter_flags[26] = {false};
    int index;

    int i = 0;
    while (str_in[i] != '\0') {
        if (isalpha(str_in[i])) {
            index = tolower(str_in[i]) - 'a';
            letter_flags[index] = true;
        }

        i++;
    }

    for (int i = 0; i < 26; i++) {
        if (!letter_flags[i]) {
            return false;
        }
    }

    return true;

}