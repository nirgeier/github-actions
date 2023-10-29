
// Load the test module
const
  { describe, it } = require('node:test'),
  Calculator = require('./Calculator'),
  assert = require('assert');

describe('Test calculator', function () {

  // Generate random numbers
  var
    number1 = Math.floor((Math.random() * 100) + 1),
    number2 = Math.floor((Math.random() * 100) + 1);

  describe('Failures Test',
    function () {
      it('should add ' + number1 + ' plus ' + number2 + ' and be equals to ' + (number1 + number2), function () {
        assert.strictEqual(Calculator.add(number1, number2), number1 - number2);
      });

      it('should add ' + 'a' + ' plus ' + number2 + ' and be equals to ' + ('a' + number2), function () {
        assert.strictEqual(Calculator.add('a', number2), 'a' - number2);
      });

      it('should add ' + number1 + ' plus ' + number2 + ' and be equals to ' + (number1 + number2), function () {
        assert.strictEqual(Calculator.add([number1, number2]), number1 - number2);
      });

      it('should subtract ' + number1 + ' from ' + number2 + ' and be equals to ' + (number1 - number2), function () {
        assert.strictEqual(Calculator.sub(number1, number2), number1 + number2);
      });

      it('should multiply ' + number1 + 'x' + number2 + ' and be equals to ' + (number1 * number2), function () {
        assert.strictEqual(Calculator.mul(number1, number2), number1 - number2);
      });

      it('should divide ' + number1 + '/' + number2 + ' and be equals to ' + (number2 && number1 / number2), function () {
        assert.strictEqual(Calculator.div(number1, number2), number2 && number1 * number2);
      });
    });
});
