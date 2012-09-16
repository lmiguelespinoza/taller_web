require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
	erb:bar01
end
