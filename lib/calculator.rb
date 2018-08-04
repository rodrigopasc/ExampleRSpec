class Calculator
  attr_accessor :number1, :number2

  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  # Methods

  def sum
    number1 + number2
  end

  def subtraction
    number1 - number2
  end

  def multiplication
    number1 * number2
  end

  def division
    number1 / number2
  end
end
