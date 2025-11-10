module Enumerable
  # Your code goes here
  def my_select
    result = []
    my_each do |i|
      if yield( i )
        result << i
      end
    end
    result
  end

  def my_all?
    my_each do |i|
      return false unless yield(i)
    end
    true
  end

  def my_any?
    my_each do |i|
      return true if yield(i) 
    end
    false
  end 
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for i in 0...self.length
      yield(self[i])
    end
    self
  end
  
  def my_each_with_index
    for i in 0...self.length
      yield(self[i], i)
    end
    self
  end
end

