#!/usr/bin/env ruby
class TestMethodMissing
    def add(a, b)
        a+b
    end

    #In most languages when a method cannot be found and error is thrown and
    #your program stops. In ruby you can actually catch those errors and
    #perhaps do something intelligent with the situation.
    #
    # custom define the method_misssing method
    def method_missing(name, *args)
        puts "Can't find the method #{name}"
    end
end
test = TestMethodMissing.new
p test.add(1,3)
p test.sub(3,1)
