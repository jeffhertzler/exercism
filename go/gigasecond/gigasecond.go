package gigasecond

import (
	"math"
	"time"
)

// AddGigasecond adds 10^9 seconds to the passed in time.
func AddGigasecond(t time.Time) time.Time {
	return t.Add(time.Duration(math.Pow10(9)) * time.Second)
}
