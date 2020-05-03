package main

import (
	"fmt"
	"strconv"
	"strings"
)

func reverse(str string) string {
	var strBuilder strings.Builder
	runes := []rune(str)

	for i := len(runes) - 1; 0 <= i; i-- {
		strBuilder.WriteRune(runes[i])
	}

	return strBuilder.String()
}

func isPalindrome(num int) bool {
	stringifiedNum := strconv.Itoa(num)
	reversedNum := reverse(stringifiedNum)

	return stringifiedNum == reversedNum
}

func solution() int {
	largestPalindrome := 0
	pointerA := 100
	pointerB := 100
	limit := 1000

	for pointerA < limit {
		sum := pointerA * pointerB

		if isPalindrome(sum) {
			largestPalindrome = sum
		}

		if pointerB == 999 {
			break
		} else if pointerA == 999 {
			pointerA = 900
			pointerB++
		} else {
			pointerA++
		}
	}

	return largestPalindrome
}

func main() {
	fmt.Println(solution())
}
