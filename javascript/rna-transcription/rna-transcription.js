const DnaToRna = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U',
};

const toRnaChar = c => {
  if (!DnaToRna.hasOwnProperty(c)) {
    throw new Error('Invalid input');
  }
  return DnaToRna[c];
};

module.exports = class DnaTranscriber {
  toRna(dna) {
    return dna.split('').map(toRnaChar).join('');
  }
};
