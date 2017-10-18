module.exports = {
  for(n = 1, factors = [], i = 2) {
    return n === 1
      ? factors
      : n % i
        ? this.for(n, factors, i + 1)
        : this.for(n / i, [...factors, i], i);
  }
};
