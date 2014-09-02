#!/usr/bin/env ruby

require "socket"

client = TCPSocket.new("localhost", 8000)
str = client.recv(100)
print str
client.close
