module.exports = {
  for(n) {
    let factors = [];
    for (let i = 2; n > 1; i++) {
      while (!(n % i)) {
        factors.push(i);
        n = n / i;
      }
    }
    return factors;
  }
};
