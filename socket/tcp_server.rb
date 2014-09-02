#!/usr/bin/env ruby

require 'socket'

server = TCPServer.new('localhost', 8000)

puts "Listening"

loop do
	Thread.start(server.accept) do |client|
		puts "Connected to server!"
		sock_domain, remote_port, remote_hostname, remote_ip = client.peeraddr

		client.puts "Hello!"
		client.puts "Time is #{Time.now}!"
		
		puts "Connection coming from #{remote_hostname} and port #{remote_port}"
		sleep 30
		client.close
	end
end
