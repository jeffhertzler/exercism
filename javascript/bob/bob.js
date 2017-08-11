const yell = g => (g === g.toUpperCase() && /[A-Z]/.test(g) ? 'Whoa, chill out!' : false);
const question = g => (g.endsWith('?') ? 'Sure.' : false);
const nothing = g => (g === '' ? 'Fine. Be that way!' : false);

module.exports = class Bob {
  hey(greeting = '') {
    const g = greeting.trim();
    return yell(g) || question(g) || nothing(g) || 'Whatever.';
  }
};
