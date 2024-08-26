using System;

public class Kata {
    public static string BreakCamelCase(string str) {
        string result = ""; 

        foreach(char c in str) {
            if (Char.IsUpper(c)) {
                result += " " + c;
                // Add an extra space in front if it's uppercase
                // otherwise just add the character without to space
            } else {
                result += c;  
            };
        }

        return result;
    }
}