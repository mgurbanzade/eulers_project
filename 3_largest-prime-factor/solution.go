package main

import (
  "fmt"
)

func solution(num int) int {
  tempNum := num
  largestFact := 0
  counter := 2

  for counter * counter <= tempNum {
    if tempNum % counter == 0 {
      tempNum = tempNum / counter;
      largestFact = counter;
    } else {
      counter += 1
    }
  }

  if tempNum > largestFact {
    largestFact = tempNum
  }

  return largestFact
}

func main() {
  inputNum := 600851475143
  fmt.Println(solution(inputNum))
}
