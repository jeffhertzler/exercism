const enc = (x, y) => x + y;
const dec = (x, y) => x - y;
const base = 'a'.charCodeAt(0);
const diff = (key, i) => key.charCodeAt(i % key.length) - base;
const constrain = x => base + (x - base) % 26;
const codes = (str, key, f) => {
  return str.split('').map((c, i) => {
    const code = c.charCodeAt(0);
    const newCode = f(code, diff(key, i));
    return constrain(newCode);
  });
};
const strFromCodes = args => String.fromCharCode(...args);

module.exports = class Cipher {
  constructor(key = 'aaaaaaaaaa') {
    if (key.match(/^[a-z]+$/) === null) {
      throw new Error('Bad key');
    }
    this.key = key;
  }
  encode(str) {
    return strFromCodes(codes(str, this.key, enc));
  }
  decode(str) {
    return strFromCodes(codes(str, this.key, dec));
  }
};
