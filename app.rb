require "./Models/Terrain"
require 'sinatra'
# @@ Inevitable, omnipresente
@@terrain = Terrain.new(0,0)

get '/' do
    erb:helloWorld
end

get '/crear/terreno' do
    erb:crearTerreno
end

post '/dimensionar' do
    @dimx = params[:dimx].to_i
    @dimy = params[:dimy].to_i

    #Estoy creando la Tabla,
    @@terrain = Terrain.new(@dimx,@dimy)
    @@terrain.rows = @dimx #(rows,0)
    @@terrain.cols = @dimy #(0,cols)
    #@@terrain.matrix.each { |x| x.each { |y| puts y.isFree} }
        
    count = 0
    for row in 0..@dimx-1 do
        for col in 0..@dimy-1 do
            puts @@terrain.matrix[row][col].isFree
            count += 1
        end
    end
    puts count
    puts "good enough" 
    
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

get '/create/route' do
    puts "cualquier cagada"
    erb:createRoute
end

post '/route' do
    @posx = params[:posx]
    @posy = params[:posy]
    erb:route
end