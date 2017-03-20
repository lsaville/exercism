var Hamming = function() {};

Hamming.prototype.compute = function(strandOne, strandTwo) {
  if (strandOne.length != strandTwo.length) { throw "DNA strands must be of equal length."};
  var differences = 0;
  for (i = 0; i < strandOne.length; i ++) {
    if (strandOne[i] !== strandTwo[i]) { differences += 1 };
  }
  return differences;
};

module.exports = Hamming;
