#!/usr/bin/env ruby

require_relative 'moduleA'
require_relative 'moduleB'

A.add(4)
B.add(4)
A.sub(10)
B.sub(10)
B.sayhello

#文件执行路径
p eval('File.join(File.dirname(caller[0]), "moduleB")')
p eval('File.dirname(caller[0])')
