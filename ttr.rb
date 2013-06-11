require 'active_support/all'

class Test
  @@count = 10
  cattr_accessor :count 
  #cattr_accessor就相当于java的类静态变量，
  #对所有的类实例共享
  def add
    @@count += 1
    puts @@count
  end
end
puts Test.count

test1 = Test.new
test1.add

test2 = Test.new
test2.add

Test.count = 5
test1.add
test2.add
