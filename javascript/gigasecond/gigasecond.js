module.exports = class Gigasecond {
  constructor(old) {
    this.old = old.getTime();
  }
  date() {
    return new Date(this.old + 10 ** 12);
  }
};
