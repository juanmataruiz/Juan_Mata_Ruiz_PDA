var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })
  it('should add', function () {
    assert.equal(1 + 4, 5);
  });

  it('should subtract', function () {
    assert.equal(7 - 4, 3);
  });

  it('should multiply', function () {
    assert.equal(3 * 5, 15);
  });

  it('should divide', function () {
    assert.equal(21 / 7, 3);
  });

  it('should concatenate multiple number on button click', function () {
    calculator.numberClick(1);
    calculator.numberClick(2);
    calculator.numberClick(3);
    assert.strictEqual(calculator.runningTotal, 123);
  });

  it('should chain operations together', function () {
    calculator.numberClick(1);
    calculator.operatorClick('+');
    calculator.numberClick(5);
    calculator.operatorClick('=');
    assert.strictEqual(calculator.runningTotal, 6);
  });

  it('should clear the running total', function () {
    calculator.numberClick(1);
    calculator.numberClick(1);
    calculator.numberClick(2);
    calculator.clearClick()
    assert.strictEqual(calculator.runningTotal, 0);
  });

});
