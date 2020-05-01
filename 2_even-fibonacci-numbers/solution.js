const upperBound = 4000000;

const solution = (num) => {
  let next;
  let prev = 1;
  let curr = 2;
  let sum = 0;

  while (curr <= num) {
    next = curr + prev;
    prev = curr;

    if (curr % 2 === 0) {
      sum += curr;
    }

    curr = next;
  }

  return sum;
}

console.log(solution(upperBound));
