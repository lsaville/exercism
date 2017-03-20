var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (isSilence(input)) {
    return "Fine. Be that way!"
  } else if (isShouting(input)) {
    return "Whoa, chill out!"
  } else if (isQuestion(input)) {
    return "Sure."
  } else {
    return "Whatever."
  };
  
  function isSilence(input) {
    return input.trim() === '';
  };

  function isShouting(input) {
    return input === input.toUpperCase() && input !== input.toLowerCase();
  };

  function isQuestion(input) {
    return input.endsWith('?');
  };
};

module.exports = Bob;
