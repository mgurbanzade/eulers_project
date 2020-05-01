package main

import (
  "fmt"
)

func solution(num int) int {
  next := 0
  prev := 1
  curr := 2
  sum := 0

  for curr <= num {
    next = prev + curr
    prev = curr

    if curr % 2 == 0 {
      sum += curr
    }

    curr = next
  }

  return sum
}

func main() {
  upperBound := 4000000
  fmt.Println(solution(upperBound))
}
