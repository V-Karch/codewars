package CreditCardMask;

public class solution {
    public static String maskify(String str) {
        if (str.length() <= 4) { return str; }

        int lengthCap = str.length() - 4;
        String result = "";
        for (int i = 0; i < str.length(); i++) {
            if (i >= lengthCap) {
                result += str.charAt(i);
            } else {
                result += "#";
            }
        }

        return result;
    }
}