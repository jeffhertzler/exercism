package raindrops

import "strconv"

// Convert accepts an integer and returns a string of raindrop speak
func Convert(num int) string {
	raindrop := ""
	if num%3 == 0 {
		raindrop += "Pling"
	}
	if num%5 == 0 {
		raindrop += "Plang"
	}
	if num%7 == 0 {
		raindrop += "Plong"
	}
	if raindrop == "" {
		raindrop = strconv.Itoa(num)
	}
	return raindrop
}
