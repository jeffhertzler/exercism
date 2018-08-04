// Package twofer lets you share with another.
package twofer

import "fmt"

// ShareWith accepts a name and returns a string for sharing with another.
func ShareWith(name string) string {
	if name == "" {
		name = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", name)
}
