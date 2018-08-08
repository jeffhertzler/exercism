package bob

import "strings"

// Hey accepts a remark and returns a lacksadaisical response from Bob
func Hey(remark string) string {
	answer := "Whatever."
	remark = strings.TrimSpace(remark)
	if nothing(remark) {
		answer = "Fine. Be that way!"
	} else if question(remark) && yell(remark) {
		answer = "Calm down, I know what I'm doing!"
	} else if question(remark) {
		answer = "Sure."
	} else if yell(remark) {
		answer = "Whoa, chill out!"
	}
	return answer
}

func nothing(remark string) bool {
	return remark == ""
}

func question(remark string) bool {
	return strings.HasSuffix(remark, "?")
}

func yell(remark string) bool {
	return strings.ToLower(remark) != remark && strings.ToUpper(remark) == remark
}
