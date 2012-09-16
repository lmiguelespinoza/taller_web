require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
	"Ubicacion de bares en Lima    -    Donde quedamos "
end
