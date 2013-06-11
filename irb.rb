#!/usr/bin/env ruby

b = binding
while code = gets
    p eval(code, b)
end
