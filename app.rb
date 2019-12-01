require "./Models/Terrain"
require 'sinatra'
# @@ Inevitable, omnipresente
@@terrain = Terrain.new(0,0)
set :DimensionTerrainX,0
set :DimensionTerrainY,0
set :PositionX,0
set :PositionY,0

get '/' do
    erb:principal
end

get '/createTerrain' do
    erb:createTerrain
end

post '/dimensionar' do
    @dimx = params[:dimx].to_i
    @dimy = params[:dimy].to_i
    settings.DimensionTerrainX = @dimx
    settings.DimensionTerrainY = @dimy
    #Estoy creando la Tabla,
    #@@terrain = Terrain.new(@dimx,@dimy)
    #@@terrain.rows = @dimx #(rows,0)
    #@@terrain.cols = @dimy #(0,cols)
    #@@terrain.matrix.each { |x| x.each { |y| puts y.isFree} }
        
#    count = 0
#    for row in 0..@dimx-1 do
#        for col in 0..@dimy-1 do
#            puts @@terrain.matrix[row][col].isFree
#          count += 1
#       end
#   end
#   puts count
#    puts "good enough"  
    erb :dimensiones
end

get '/setCarPosition' do
    erb:setCarPosition
end

post '/carPositionSet' do
    #RESCATAMOS LAS DIMENSIONES DEL TERRENO
    @dimx = settings.DimensionTerrainX
    @dimy = settings.DimensionTerrainY

    @posx = params[:posx]
    @posy = params[:posy]
    
    settings.PositionX = @posx
    settings.PositionY = @posy

    erb:carPositionSet
end
get '/createRoute' do
    erb:createRoute
end

post '/route' do
    @ruta = params[:ruta]
    erb:route
end