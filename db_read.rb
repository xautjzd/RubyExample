#!/usr/bin/env ruby

require 'rubygems'
require 'mysql'

begin
	db = Mysql.new('202.200.112.165', 'root', 'root', 'sensor')
rescue Mysql::Error => e
	puts "Sorry, database connection failure."
	exit 1
end

begin
	results = db.query "select * from acceleration";
	puts "#{results.first.Id}"
	results.free
ensure
	db.close
end

