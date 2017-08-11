const earth = seconds => seconds / 60 / 60 / 24 / 365.25;
const round = years => Math.round(years * 100) / 100;
const convert = (s, x = 1) => round(earth(s) / x);

module.exports = class SpaceAge {
  constructor(seconds = 0) {
    this.seconds = seconds;
  }
  onEarth() {
    return convert(this.seconds);
  }
  onMercury() {
    return convert(this.seconds, 0.2408467);
  }
  onVenus() {
    return convert(this.seconds, 0.61519726);
  }
  onMars() {
    return convert(this.seconds, 1.8808158);
  }
  onJupiter() {
    return convert(this.seconds, 11.862615);
  }
  onSaturn() {
    return convert(this.seconds, 29.447498);
  }
  onUranus() {
    return convert(this.seconds, 84.016846);
  }
  onNeptune() {
    return convert(this.seconds, 164.79132);
  }
};
