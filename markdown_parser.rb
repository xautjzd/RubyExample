#!/usr/bin/env ruby

# Refer: 
#   1. http://crabonature.pl/posts/16-markdown-in-ruby-on-rails
#   2. http://crabonature.pl/posts/17-syntax-highlighting-in-ruby-on-rails

require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

class HTML < Redcarpet::Render::HTML
	include Rouge::Plugins::Redcarpet
end

render_options = {
    filter_html:     true,
    # will insert <br /> tags in paragraphs where are newlines 
    # (ignored by default)
    hard_wrap:       true, 
    # hash for extra link options, for example 'nofollow'
    link_attributes: { rel: 'nofollow' }
}

# renderer = Redcarpet::Render::HTML.new(render_options)
renderer = HTML.new render_options

markdown = Redcarpet::Markdown.new renderer, fenced_code_blocks: true, autolink: true

# Get markdown file name to parse to html
origin_name = ARGV[0]
# Create xxx.html(origin file: xxx.markdown)
des_file = File.open File.basename(origin_name, ".*"+".html"), "w"

des_file.write "<html>"
des_file.write "<head>"
css = `rougify style`
des_file.write "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>"
puts #{css}
des_file.write "<style type='text/css'>#{css}</style>"
des_file.write "</head>"
des_file.write "<body>"

# Parse markdown to html
contents = File.open(origin_name).read
des_file.write markdown.render contents

des_file.write "</body>"
des_file.write "</html>"
