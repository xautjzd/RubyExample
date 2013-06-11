#!/usr/bin/env ruby

#演示类变量、类实例变量的区别
#
class Test
    @count = nil

    class << self
        attr_accessor :count
    end
end
class Test1 < Test
    @count = "test1"
end
class Test2 < Test
    @count = "test2"
end

p Test.count
p Test1.count
p Test2.count 

obj1 = Test1.new
obj1.count = "test"
obj1.count
p Test.count
p Test1.count
p Test2.count 

