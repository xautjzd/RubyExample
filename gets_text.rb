#!/usr/bin/env ruby

filename = ARGV[0]
file = open(filename)
while file.gets
    print file.gets
end
file.close
