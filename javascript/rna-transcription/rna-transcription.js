var DnaTranscriber = function() {
  this.rnaCipher = {'G': 'C',
                    'C': 'G',
                    'A': 'U',
                    'T': 'A'};
};

DnaTranscriber.prototype.toRna = function(dnaStrand) {
  rna = '';
  for (var i = 0; i < dnaStrand.length; i++) {
    rna += this.rnaCipher[dnaStrand[i]];
  }
  return rna;
};

module.exports = DnaTranscriber;
