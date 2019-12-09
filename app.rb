require "./lib/robot"
require "./lib/terrain"
require "./lib/route"
require "./lib/robots"
require "./lib/routes"
require 'sinatra'
# @@ Inevitable, omnipresente
@@robot ||= Robot.new
@@terrain ||= Terrain.new
@@route ||= Route.new
@@robots ||= Robots.new
@@routes ||= Routes.new

get '/' do
    erb:principal
end

get '/createTerrain' do
    @@terrain.initializate(@dimx,@dimy)
    erb:createTerrain
end

post '/dimensions' do
    @dimx = params[:dimx].to_i
    @dimy = params[:dimy].to_i
    @@terrain.set_dimensions(@dimx,@dimy)
    erb :dimensions
end
get '/setCarPosition' do
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