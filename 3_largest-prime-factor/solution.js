const inputNum = 600851475143;

const solution = (num) => {
  let tempNum = num;
  let largestFact = 0;
  let counter = 2;

  while (counter * counter <= tempNum) {
    if (tempNum % counter === 0) {
      tempNum = tempNum / counter;
      largestFact = counter;
    } else {
      counter += 1;
    }
  }

  if (tempNum > largestFact) largestFact = tempNum;

  return largestFact
}

console.log(solution(inputNum));
