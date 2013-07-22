#!/usr/bin/env ruby

filename = ARGV[0]
file = open(filename)
text = file.read
p text
file.close
