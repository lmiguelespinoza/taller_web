require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
	erb:bar01
end
get '/bar02' do
	erb:bar02
end