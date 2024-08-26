package ArrayDiff;

import java.util.Arrays;
import java.util.HashSet;

public class solution {
    public static int[] arrayDiff(int[] a, int[] b) {
        HashSet<Integer> exclusionSet = new HashSet<>();
        for (int i: b) { exclusionSet.add(i); } // Set for ability to use contains

        // Filter the array to not contain anything from the exclusion set
        // and return the value
        return Arrays.stream(a).filter(i -> !exclusionSet.contains(i)).toArray();
    }
} 