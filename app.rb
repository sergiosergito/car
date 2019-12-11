require "./lib/robot"
require "./lib/terrain"
require "./lib/route"
require 'sinatra'
# @@ Inevitable, omnipresente

@@cantRobots
get '/' do
    erb:principal
end



get '/createTerrain' do
    @@terrain ||= Terrain.new
    erb:createTerrain
end

post '/dimensions' do
    @dimx = params[:dimx].to_i
    @dimy = params[:dimy].to_i
    @@terrain.initializate(@dimx,@dimy)
    erb :dimensions
end
get '/setCarPosition' do
    @@robot ||= Robot.new
    erb:setCarPosition
end
post '/carPositionSet' do
    # Rescatamos las dimensiones del terreno
    @posx = params[:posx].to_i
    @posy = params[:posy].to_i
    @orientation = params[:orientation]
    @@robot.initializate(@posx,@posy,@orientation)
    erb:carPositionSet
end
get '/createRoute' do
    @@route ||= Route.new
    erb:createRoute
end

post '/route' do
    @ruta = params[:ruta]
    @@route.initializate(@ruta)
    erb:route
end

get '/finalPosition' do
    erb:finalPosition
end

#varios Autos

get '/manyRobots' do
    erb:manyRobots
end

post '/setPositionManyCars_And_CreateTerrain' do
    
    @@cantRobots = params[:cant_robots].to_i()
    @@robots = []
    @@routes = []
    @@terrain ||= Terrain.new
    for i in 0..@@cantRobots-1 do
        @@robots << Robot.new
        @@routes << Route.new
    end
    erb:setPositionManyCars
end

post '/ShowResultsManyCars' do
    @dimx = params[:dimx].to_i
    @dimy = params[:dimy].to_i
    @@terrain.initializate(@dimx,@dimy)
    for i in 0..@@cantRobots-1 do
        @posx = params[i.to_s + '_posx'].to_i
        @posy = params[i.to_s + '_posy'].to_i
        @orientation = params[i.to_s + '_orientation']
        @ruta = params[i.to_s + '_ruta']

        @@robots[i].initializate(@posx,@posy,@orientation)
        @@routes[i].initializate(@ruta)
    end

    erb:showResultsManyCars
end