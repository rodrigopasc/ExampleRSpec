class Stack
  attr_accessor :elements

  def initialize
    @elements = []
  end

  # Methods

  def push(item)
    @elements << item
  end

  def top
    @elements[-1]
  end

  def pop
    @elements.pop
  end

  def clear
    @elements = []
  end
end
