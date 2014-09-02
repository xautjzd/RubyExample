#!/usr/bin/env ruby

class Demo
	def test
		puts "I run a test"
	end
end

demo = Demo.new
demo.instance_eval "test"
