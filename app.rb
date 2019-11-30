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

get '/set/car/position' do
    erb:setCarPosition
end

post '/car/position/set' do
    @posx = params[:posx]
    @posy = params[:posy]
    erb:carPositionSet
end