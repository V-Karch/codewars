#include <string>
#include <bits/stdc++.h>

bool is_isogram(std::string str) {
    std::unordered_set<char> charSet;
    // Make a set of characters

    for (int i = 0; i < str.size(); i++) {
        char c = str[i];

        if (std::isupper(str[i])) {
            c = tolower(c);
        } // if the character is uppercase, make it lowercase

        if (charSet.find(c) != charSet.end()) {
            return false; // if the character is already in the set
            // return false because that means it isn't an isogram
        }

        // otherwise add it to the set
        charSet.insert(c);
    }

    // if the loop reaches here, the string is an isogram
    return true;
}