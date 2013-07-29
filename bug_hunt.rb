#!usr/bin/env ruby

class BugTest
    def method_missing(name, *args)
        person = name.to_s.capitalize
       # super unless %w(xautjzd test xaut).include? person
        number = 0
        3.times do
            number = rand(10) + 1
            puts "#{number}..."
        end
        "#{person} got a #{number}"
    end
end

test = BugTest.new
puts test.xautjzd
puts test.hello
puts test.bob
