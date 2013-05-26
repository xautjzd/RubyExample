#!/usr/bin/env ruby
#this script mainly count the specified file lines
def linecount(fname)
    File.open(fname, "r") do |f|
        f.readlines.length
    end
end
print "The file #{ARGV[0]} has ",linecount(ARGV[0])," lines\n"
