/**
 * This is a simple calculator with few simple options
 */

module.exports = (function () {

  return {

    /**
     * Add multiple numbers
     * @param {[type]} addend1 [description]
     * @param {[type]} addend2 [description]
     */
    add: function () {

      // Check to see if the input is array
      if (Array.isArray(arguments[0])) {
        return arguments[0].reduce(function (a, b) {
          return a + b;
        }, 0);
      } // if
      else {
        return arguments[0] + arguments[1];
      }
    },
    sub: function (a, b) {
      return a - b;
    },
    div: function (a, b) {
      return a / b; //quotient
    },
    mul: function (a, b) {
      return a * b; //product
    }
  };
})();