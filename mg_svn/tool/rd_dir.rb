#!/usr/bin/ruby

#list ARGV dir list
dirlist=[]

path=ARGV[0] + "/*"

puts path.inspect

Dir[path].each{|d| puts (File::basename d) if File::directory? d}

dirlist

