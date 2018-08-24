package raindrops

import (
	"strconv"
	"strings"
)

// Convert accepts an integer and returns a string of raindrop speak
func Convert(num int) string {
	var sb strings.Builder
	if num%3 == 0 {
		sb.WriteString("Pling")
	}
	if num%5 == 0 {
		sb.WriteString("Plang")
	}
	if num%7 == 0 {
		sb.WriteString("Plong")
	}
	if sb.Len() == 0 {
		sb.WriteString(strconv.Itoa(num))
	}
	return sb.String()
}
