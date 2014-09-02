#!/usr/bin/env ruby

require 'socket'

s = TCPSocket.new 'localhost', 8000

while line = s.gets  # Readlines from socket
	puts line          # print them
end

s.close
