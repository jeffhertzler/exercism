const letters = 'abcdefghijklmnopqrstuvwxyz';

module.exports = class Pangram {
  constructor(sentence = '') {
    this.sentence = sentence.toLowerCase();
  }
  isPangram() {
    return letters.split('').every(c => this.sentence.includes(c));
  }
};
