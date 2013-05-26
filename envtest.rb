#!/usr/bin/env ruby

#ENV constants can get all the system varibles
#ENV[name]:get the varible value
#ENV[name]=value:set the varible value
ENV.each{|key,value| print key,": ",value,"\n"}
p ENV.size
