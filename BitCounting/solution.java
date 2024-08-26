package BitCounting;

public class solution {
	public static int countBits(int n) {
		// Convert to binary string representation

		String  binaryRepresentation = Integer.toBinaryString(n);

		int bitCount = 0;

		for (char c: binaryRepresentation.toCharArray()) {
			if (c == '1') {
				bitCount++; // Count every time the number '1' is in the string
			}
		}

		return bitCount;
	}
}