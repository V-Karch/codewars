package Isograms;

import java.util.HashSet;

public class solution {
    public static boolean  isIsogram(String str) {
        HashSet<Character> uniqueValues = new HashSet<>();
        // Make a new empty set of Characters
        
        for (char c: str.toLowerCase().toCharArray()) {
            if (uniqueValues.contains(c)) {
                return false;
                // if the set ever contains the value being looped over
                // the provided string must not be an isogram
                // and as such we return false
            }

            // Otherwise we add the value to the set and return true when the loop ends
            uniqueValues.add(c);
        }

        return true;
    } 
}