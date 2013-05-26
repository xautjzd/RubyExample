#!/usr/bin/env ruby

def foo
    bar = "baz"
    return binding
end
# specify the context foo,so bar varible exsist
eval('p bar',foo)
#the context is main,so bar varible don't exsist
#eval('p bar')    =>will cause fault

def get_binding(str)
    return binding
end
p = get_binding("hello")
p.eval("p str")
eval("p str",get_binding("hello"))
