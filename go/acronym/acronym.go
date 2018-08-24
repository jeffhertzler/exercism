package acronym

import (
	"bytes"
	"strings"
)

// Abbreviate accepts a string and returns a string acronym
func Abbreviate(s string) string {
	var b bytes.Buffer
	for i, c := range s {
		if i == 0 || rune(s[i-1]) == ' ' || rune(s[i-1]) == '-' {
			b.WriteRune(c)
		}
	}
	return strings.ToUpper(b.String())
}
