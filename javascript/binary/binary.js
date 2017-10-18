module.exports = class Binary {
  constructor(binary) {
    this.binary = /^[01]+$/.test(binary) ? binary : '0';
  }
  toDecimal() {
    return [...this.binary].reverse().map(Number).reduce((t, b, i) => t + b * 2 ** i, 0);
  }
};
