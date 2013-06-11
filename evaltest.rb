#!/usr/bin/env ruby

#
#function:test the module_eval and class_eval method
#author:xautjzd
#
module A
end

class B
    @@str = "test"
    include A 
end
A::module_eval{ define_method(:sayhello){ puts "hello" } }
B::class_eval{ define_method(:sayhi){ puts "hi" } }

obj = B.new
puts obj.sayhello
puts obj.sayhi

A::class_eval{ define_method(:aaa){ puts "module test" } }
B::module_eval{ define_method(:bbb){ puts "class test" } }

obj1 = B.new
puts obj1.aaa
puts obj1.bbb
