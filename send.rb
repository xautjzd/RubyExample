#!/usr/bin/env ruby

#function:demonstrate the send method
#send method exsist in Obejct class 
#auther:xautjzd
#
class SendTest
    def hello(*args)
        p("Hello " + args.join(' '))
    end
end
t = SendTest.new
t.send(:hello, "dear", "man")

name = "xautjzd"
puts name.send(:upcase)
puts name.send(:reverse)
