#!/usr/bin/env ruby
#function:it's similar to linux's wc cmd
#time:2013-7-21

ltotal = 0      #line total
wtotal = 0      #word total
ctotal = 0      #character total

printf("%8s %8s %8s %s\n", "line", "word", "character", "file")
ARGV.each { |file|
    begin
        input = open(file)
        l = 0   #line in a file
        w = 0   #word in a file
        c = 0   #character in a file
        while line = input.gets
            l += 1
            c += line.gsub!(/\s*/, "").size  #\s means whitespace character, \S means not a whitespace character 
            line.sub!(/^\s+/, "")
            array = line.split(/\s+/).size
            w += array.size
        end
        input.close
        printf("%8d %8d %8d %s\n", l, w, c, file)
        ltotal += 1
        wtotal += w
        ctotal += c
    rescue => exception
        print exception.message, "\n"
    end
}
printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total");
