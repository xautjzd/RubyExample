#!/usr/bin/env ruby

#function:this script will get the specified page and print all to the screen
#usage:./urlread.rb url

require 'open-uri'
open(ARGV[0]){|f| print f.read}
