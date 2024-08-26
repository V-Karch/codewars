package ArrayDiff

func ArrayDiff(a, b []int) []int {
	result := []int{}

	for _, element := range a {
		if !arrayContains(b, element) {
			result = append(result, element)
		}
	}

	return result
}

func arrayContains(array []int, target int) bool {
	for _, element := range array {
		if element == target {
			return true
		}
	}

	return false
}
