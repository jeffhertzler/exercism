const letters = 'abcdefghijklmnopqrstuvwxyz';

const enc = (x, y) => x + y;
const dec = (x, y) => x - y;

const index = c => letters.indexOf(c);

const translate = (str, key, f) => {
  return str
    .split('')
    .map((c, i) => {
      const code = f(index(c), index(key[i]));
      return letters[code % letters.length];
    })
    .join('');
};

module.exports = class Cipher {
  constructor(key = 'aaaaaaaaaa') {
    if (!/^[a-z]+$/.test(key)) {
      throw new Error('Bad key');
    }
    this.key = key;
  }
  encode(str) {
    return translate(str, this.key, enc);
  }
  decode(str) {
    return translate(str, this.key, dec);
  }
};
