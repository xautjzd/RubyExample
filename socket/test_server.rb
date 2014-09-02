#!/usr/bin/env ruby

require "socket"

dts = TCPServer.new("localhost", 8000)
loop do
	Thread.start(dts.accept) do |socket|
		print(socket, " is accpected\n")
		socket.write(Time.now)
		print(socket, " is gone\n")
		socket.close
	end
end
