require 'sinatra'
require 'rubygems'
require 'mongo'
require  './mon01.rb'
#require "sinatra/reloader" if development?

$gUsuario = ' Visita'
$gTitulo = ''
$gContenido = ''
$gDireccion = ''
$gDistrito = ''
$gLatitud = ''
$gLongitud = ''
$gTipo = 1

get '/' do
        $gTipo = 1
        erb:bar01
end

get '/bar02' do
        $gTipo = 2
        erb:bar02
end

get '/bar03' do
        erb:bar03
end

get '/bar04' do
        $gTipo = 4
        erb:bar04
end

get '/bar05' do        
        erb:bar05
end

get '/bar06' do
        erb:bar06
end

post '/registra' do

    pTit = params[:titulo]
    pCon = params[:contenido]
    pDir = params[:direccion]
    pDis = params[:distrito]
    pLat = params[:latitud]
    pLon = params[:longitud]
    MongoADO.add_ruta(pTit, pCon, pDir, pDis, pLat, pLon)
    redirect '/bar03'

end	

post '/busTitulo' do

    pTit = params[:titulo]    
    reg=MongoADO.like_ruta(pTit)        
    $gTitulo = ''
    $gContenido = ''
    $gDireccion = ''
    $gDistrito = ''
    $gLatitud = ''
    $gLongitud = ''
    if reg[0] != 'T00'
        $gTitulo = reg[0].to_s[2,(reg[0].to_s.length - 4)] 
        $gContenido = reg[1].to_s[2,(reg[0].to_s.length - 4)] 
        $gDireccion = reg[2].to_s[2,(reg[2].to_s.length - 4)] 
        $gDistrito = reg[3].to_s[2,(reg[3].to_s.length - 4)] 
        $gLatitud = reg[4].to_s[2,(reg[4].to_s.length - 4)] 
        $gLongitud = reg[5].to_s[2,(reg[5].to_s.length - 4)] 
    end        

    redirect '/'               if $gTipo == 1
    redirect '/bar02'   if $gTipo == 2
    redirect '/bar04'   if $gTipo == 4

end     

post '/elimina' do

    pTit = params[:titulo]
    MongoADO.delete_ruta(pTit)
    redirect '/bar05'

end 

post '/usuario' do

    pUsu = params[:usuario]
    $gUsuario = ' Bienvenido : ' + pUsu
    redirect '/'

end 