require 'pry'

def hello(array)
  i = 0
  collect = []
  while i < array.length
    
    collect.push(yield(array[i]))
    i += 1
  end
  collect
end


y = hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }

puts(y)
