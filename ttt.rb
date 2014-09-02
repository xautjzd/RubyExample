#!/usr/bin/env ruby

require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class HTML < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet
end


render_options = {
  filter_html: true,
  hard_wrap: true,
  link_attributes: {rel: 'nofollow'}
}
engine_options = {
  fenced_code_blocks: true,
  autolink: true
}

renderer = HTML.new render_options
markdown = Redcarpet::Markdown.new renderer, engine_options

file = File.open "ttt.html", 'w'
css = `rougify style`
file.write "<head><style type='text/css'>#{css}</style></head>"
file.write markdown.render <<EOF
```c
#include <stdio.h>
#include <unistd.h>

int main(char **argv, int argc)
{
    int fd;
    FILE *fp;
    char proclnk[255];
    char filepath[255];

		# comments
    fp = fopen("test.txt", "r");
    if (fp != NULL) {
        fd = fileno(fp);
        sprintf(proclnk, "/proc/self/fd/%d", fd);
        readlink(proclnk, filepath, 255);

        printf("fp->fd->filepath: %p->%d->%s\n", fp, fd, filepath);
    }

    return 0;
}
```
EOF
file.close
