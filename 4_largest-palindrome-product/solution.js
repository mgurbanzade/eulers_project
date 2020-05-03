const solution = () => {
  let largestPalindrome = 0;
  let pointerA = 900;
  let pointerB = 900;
  const limit = 1000;

  while (pointerA < limit) {
    const sum = pointerA * pointerB;
    const strindifiedSum = String(sum);
    const reversedStr = strindifiedSum.split('').reverse('').join('');

    if (reversedStr === strindifiedSum) largestPalindrome = sum;

    if (pointerB === 999) {
      break;
    } else if (pointerA === 999) {
      pointerA = 900;
      pointerB += 1;
    } else {
      pointerA += 1;
    }
  }

  return largestPalindrome;
};

console.log(solution());
