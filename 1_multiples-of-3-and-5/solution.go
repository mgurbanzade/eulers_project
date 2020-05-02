package main

import (
	"fmt"
)

func solution(num int) int {
	sum := 0

	for i := 0; i < num; i += 1 {
		if i % 3 == 0 || i % 5 == 0 {
			sum += i
		}
	}

	return sum
}

func main() {
	upperBound := 1000
	fmt.Println(solution(upperBound))
}
