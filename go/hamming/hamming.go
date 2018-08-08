package hamming

import "errors"

// Distance calculates the Hamming distance between dna strands.
func Distance(a, b string) (int, error) {
	distance := 0
	if len(a) != len(b) {
		return -1, errors.New("strand lengths are not equal")
	}
	for i, char := range a {
		if rune(b[i]) != char {
			distance++
		}
	}
	return distance, nil
}
