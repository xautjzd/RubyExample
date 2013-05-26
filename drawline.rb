#!/usr/bin/env ruby

#tk is a graphical subsystem used in language like Perl  and Tcl
require "tk"
include Math

TkRoot.new do |root|
    title "Draw line"
    geometry "600x600"
    canvas = TkCanvas.new(root) do |canvas|
        width 600
        height 600
        pack(:side=>'top', :fill=>'both', :expand=>'yes')
        points = []
    end
    TkcLine.new(canvas,0,0,100,100)
end
Tk.mainloop
