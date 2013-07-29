#!/usr/bin/env ruby

def to_alphanumeric(s)
    s.gsub(/[^\w\s]/,'')
end

s=to_alphanumeric('#3, the *magic, number* ?')
p s
