class StackPlus
  attr_accessor :stack
  def initialize
    @stack = [];
  end

  def push(value)
    stack.push(value)
  end

  def pop
    stack.empty? ? -1 : stack.pop()
  end

  def increment(n)
    # your code here
    tempStack = StackPlus.new
    puts "original stack: #{stack}"
    last = self.pop()
    while last != -1
      tempStack.push(last)
      last = self.pop()
    end
    last = tempStack.pop()
    while last != -1
      if(n > 0)
        self.push(last+1)
        n = n-1
        last = tempStack.pop()
    else
      self.push(last)
      last = tempStack.pop()
    end
    end
  end
end
