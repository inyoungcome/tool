!#/usr/bin/ruby

require 'sinatra'

get '/index' do
  @dirlist = []
  Dir["./*"].each{|d| @dirlist << File::basename(d) if File::directory? d}
  erb :list
end


get '/svn/add' do
  erb :add
end

get '/svn/list/:name' do
  @name =params['name']
  erb :show
end




