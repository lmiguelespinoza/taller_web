require 'sinatra'
require 'rubygems'
require 'mongo'
require  './mon01.rb'
#require "sinatra/reloader" if development?

get '/' do
	erb:bar01
end

get '/bar02' do
	erb:bar02
end

get '/bar03' do
	erb:bar03
end

post '/registra' do

        pCod = params[:codigo]
        pTit = params[:titulo]
        pCon = params[:contenido]
        pLat = params[:latitud]
        pLon = params[:longitud]
        MongoADO.add_ruta(pCod, pTit, pCon, pLat, pLon)
        redirect '/bar03'

end	

