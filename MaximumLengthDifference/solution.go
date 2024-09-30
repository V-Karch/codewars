package kata

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
} // Function to get absolute value

func MxDifLg(a1 []string, a2 []string) int {
	if len(a1) == 0 || len(a2) == 0 {
		return -1 // If arrays are empty
	}

	minLenA1, maxLenA1 := len(a1[0]), len(a1[0])
	minLenA2, maxLenA2 := len(a2[0]), len(a2[0])

	for _, str := range a1 {
		length := len(str)
		if length < minLenA1 {
			minLenA1 = length
		}
		if length > maxLenA1 {
			maxLenA1 = length
		}
	} // Calculate min and max lengths for a1

	// Calculate min and max lengths for a2
	for _, str := range a2 {
		length := len(str)
		if length < minLenA2 {
			minLenA2 = length
		}
		if length > maxLenA2 {
			maxLenA2 = length
		}
	}

	diff1 := abs(maxLenA1 - minLenA2) // Get the absolute difference
	diff2 := abs(maxLenA2 - minLenA1)

	if diff1 > diff2 {
		return diff1
	} // Return whichever is bigger
	return diff2
}
