require 'sinatra'

get '/' do
    erb:helloWorld
end

get '/crear/terreno' do
    erb:crearTerreno
end

post'/dimensionar' do
    @dimx = params[:dimx]
    @dimy = params[:dimy]
    erb :dimensiones
end