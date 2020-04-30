const upperBound = 1000;

const solution = (num) => {
  let sum = 0;

  for (let i = 0; i <= num; i += 1) {
    if (i % 3 === 0 || i % 5 === 0) {
      sum += i;
    }
  }

  return sum;
}


const solutionRecursive = (num) => {
  const iter = (acc, sum) => {
    if (acc > num) return sum;
    const areConditionsMatched = (acc % 3 === 0) || (acc % 5 === 0);
    return areConditionsMatched ? iter(acc + 1, sum + acc) : iter(acc + 1, sum);
  }

  return iter(0, 0);
}

console.log(solution(upperBound));
console.log(solutionRecursive(upperBound));
