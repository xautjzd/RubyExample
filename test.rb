#!/usr/bin/env ruby

class A 
    private
    def hello
        puts "hello"
    end
    def test
        puts "test"
    end
end

class B < A
    def say
        hello
        test
    end
end

b = B.new 
b.say
