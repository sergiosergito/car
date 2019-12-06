require "./lib/robot"
require "./lib/terrain"
require "./lib/route"
require "./lib/robots"
require "./lib/routes"

RSpec.describe Robot do
    def robot
        @robot ||= Robot.new
    end
    #Inicio del Robot
    it 'Deberia devolver True Para cuando inicie la Clase' do
        expect(robot.initializate(20,40,"N")).to eq (true)
    end
    it 'Deberia devolver 20 para datos iniciados en 20,40,"N"' do
        robot.initializate(20,40,"Norte")
        expect(robot.get_posx()).to eq (20)      
    end
    it 'Deberia devolver 40 para datos iniciados en 20,40,"N"' do
        robot.initializate(20,40,"Norte")
        expect(robot.get_posy()).to eq (40)
    end
    it 'Deberia devolver Norte para datos iniciados en 20,40,"Norte"' do
        robot.initializate(20,40,"Norte")
        expect(robot.get_orientation()).to eq ("Norte")
    end
    #Coordenadas
    it 'Deberia devolver true para orientacion en Norte' do
        robot.initializate(20,40,"Norte")
        expect(robot.validate_orientation()).to eq (true)
    end
    it 'Deberia devolver true para orientacion en Sur' do
        robot.initializate(20,40,"Sur")
        expect(robot.validate_orientation()).to eq (true)
    end
    it 'Deberia devolver true para orientacion en Este' do
        robot.initializate(20,40,"Este")
        expect(robot.validate_orientation()).to eq (true)
    end
    it 'Deberia devolver true para orientacion en Oeste' do
        robot.initializate(20,40,"Oeste")
        expect(robot.validate_orientation()).to eq (true)
    end  
    it 'Deberia devolver true para orientacion en oeste' do
        robot.initializate(20,40,"oeste")
        expect(robot.validate_orientation()).to eq (true)
    end
    it 'Deberia devolver false para orientacion en qwwe' do
        robot.initializate(20,40,"qwe")
        expect(robot.validate_orientation()).to eq (false)
    end
    #Posicionamiento

    it 'Deberia devolver false para coordenadas no negativas ni nulas' do
        robot.initializate(0,40,"Oeste")
        expect(robot.validate_position_car()).to eq (false)
    end    
    it 'Deberia devolver false para coordenadas no negativas ni nulas' do
        robot.initializate(0,0,"Oeste")
        expect(robot.validate_position_car()).to eq (false)
    end
    it 'Deberia devolver true para coordenadas Correctas' do
        robot.initializate(20,40,"Oeste")
        expect(robot.validate_position_car()).to eq (true)
    end
    it 'Deberia devoler true para coordenadas Correctas' do
        robot.initializate(20,10,"Oeste")
        expect(robot.validate_position_car()).to eq (true)
    end
    it 'Deberia devolver true para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car()).to eq (true)
    end

    #Validar Carro en el Terreno
    it 'Deberia devolver true para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car_tarrain(20,30)).to eq (true)
    end
    it 'Deberia devolver false para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car_tarrain(30,10)).to eq (false)
    end
    it 'Deberia devolver false para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car_tarrain(10,5)).to eq (false)
    end
end

RSpec.describe Terrain do
    def terrain
        @terrain ||= Terrain.new
    end 
    it 'Deberia devoler True al iniciar los datos' do
        expect(terrain.initializate(10,10)).to eq (true)
    end
    it 'Deberia devolver 10 Para dimension X con datos 10,10' do
        terrain.initializate(10,10)
        expect(terrain.get_DimX()).to eq (10)
        
    end
    it 'Deberia devolver 10 Para dimension Y con datos 10,10' do
        terrain.initializate(10,10)
        expect(terrain.get_DimY()).to eq (10)
    end

    it 'Deberia Devolver False para datos negativos - nulos' do
        terrain.initializate(10,0)
        expect(terrain.validate_terrain()).to eq (false)
    end
    it 'Deberia Devolver False para datos negativos - nulos' do
        terrain.initializate(0,0)
        expect(terrain.validate_terrain()).to eq (false)
    end
    it 'Deberia Devolver False para datos negativos - nulos' do
        terrain.initializate(0,10)
        expect(terrain.validate_terrain()).to eq (false)
    end
    it 'Deberia Devolver False para datos negativos - nulos' do
        terrain.initializate(-2,10)
        expect(terrain.validate_terrain()).to eq (false)
    end
    it 'Deberia Devolver False para datos negativos - nulos' do
        terrain.initializate(-2,-3)
        expect(terrain.validate_terrain()).to eq (false)
    end
    it 'Deberia Devolver False para datos negativos - nulos' do
        terrain.initializate(5,-3)
        expect(terrain.validate_terrain()).to eq (false)
    end

    it 'Deberia Devolver True para datos Correctos' do
        terrain.initializate(10,4)
        expect(terrain.validate_terrain()).to eq (true)
    end
    it 'Deberia Devolver True para datos Correctos' do
        terrain.initializate(3,5)
        expect(terrain.validate_terrain()).to eq (true)
    end
    it 'Deberia Devolver True para datos Correctos' do
        terrain.initializate(6,6)
        expect(terrain.validate_terrain()).to eq (true)
    end
end

RSpec.describe Robot do
    def robot
        @robot ||= Robot.new
    end
    #Inicio del Robot
    it 'Deberia Devolver True Para cuando inicie la Clase' do
        expect(robot.initializate(20,40,"N")).to eq (true)
    end
    it 'Deberia Devolver 20 para datos iniciados en 20,40,"N"' do
        robot.initializate(20,40,"Norte")
        expect(robot.get_posx()).to eq (20)      
    end
    it 'Deberia Devolver 40 para datos iniciados en 20,40,"N"' do
        robot.initializate(20,40,"Norte")
        expect(robot.get_posy()).to eq (40)
    end
    it 'Deberia Devolver Norte para datos iniciados en 20,40,"Norte"' do
        robot.initializate(20,40,"Norte")
        expect(robot.get_orientation()).to eq ("Norte")
    end
    #Coordenadas
    it 'Deberia Devolver true para orientacion en Norte' do
        robot.initializate(20,40,"Norte")
        expect(robot.validate_orientation()).to eq (true)
    end
    it 'Deberia Devolver true para orientacion en Sur' do
        robot.initializate(20,40,"Sur")
        expect(robot.validate_orientation()).to eq (true)
    end
    it 'Deberia Devolver true para orientacion en Este' do
        robot.initializate(20,40,"Este")
        expect(robot.validate_orientation()).to eq (true)
    end
    it 'Deberia Devolver true para orientacion en Oeste' do
        robot.initializate(20,40,"Oeste")
        expect(robot.validate_orientation()).to eq (true)
    end
    #Posicionamiento

    it 'Deberia Devolver false para coordenadas no negativas ni nulas' do
        robot.initializate(0,40,"Oeste")
        expect(robot.validate_position_car()).to eq (false)
    end    
    it 'Deberia Devolver false para coordenadas no negativas ni nulas' do
        robot.initializate(0,0,"Oeste")
        expect(robot.validate_position_car()).to eq (false)
    end
    it 'Deberia Devolver true para coordenadas Correctas' do
        robot.initializate(20,40,"Oeste")
        expect(robot.validate_position_car()).to eq (true)
    end
    it 'Deberia Devolver true para coordenadas Correctas' do
        robot.initializate(20,10,"Oeste")
        expect(robot.validate_position_car()).to eq (true)
    end
    it 'Deberia Devolver true para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car()).to eq (true)
    end

    #Validar Carro en el Terreno
    it 'Deberia Devolver true para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car_tarrain(20,30)).to eq (true)
    end
    it 'Deberia Devolver false para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car_tarrain(30,10)).to eq (false)
    end
    it 'Deberia Devolver false para coordenadas Correctas' do
        robot.initializate(10,20,"Oeste")
        expect(robot.validate_position_car_tarrain(10,5)).to eq (false)
    end

    #Validar Rotaciones Correctas
    it 'Deberia Devolver Norte Para la siguiente secuencia de Instrucciones LL' do
        robot.initializate(2,2,"Sur")
        robot.calculate_final_route("LL",2,30,30)
        expect(robot.get_orientation_final()).to eq ("Norte")       
    end
    it 'Deberia Devolver Norte Para la siguiente secuencia de Instrucciones RR' do
        robot.initializate(2,2,"Sur")
        robot.calculate_final_route("RR",2,30,30)
        expect(robot.get_orientation_final()).to eq ("Norte")       
    end
    it 'Deberia Devolver Oeste Para la siguiente secuencia de Instrucciones RRL' do
        robot.initializate(2,2,"Norte")
        robot.calculate_final_route("RRL",3,30,30)
        expect(robot.get_orientation_final()).to eq ("Este")       
    end
    it 'Deberia Devolver Este Para la siguiente secuencia de Instrucciones LLR' do
        robot.initializate(2,2,"Norte")
        robot.calculate_final_route("LLR",3,30,30)
        expect(robot.get_orientation_final()).to eq ("Oeste")       
    end
    it 'Deberia Devolver Norte Para la siguiente secuencia de Instrucciones LLLL' do
        robot.initializate(2,2,"Norte")
        robot.calculate_final_route("LLLL",4,30,30)
        expect(robot.get_orientation_final()).to eq ("Norte")       
    end

    #Validar Movimientos Correctos
    #Eje Y
    it 'Deberia Devolver 1 Para la siguiente secuencia de Instrucciones MM Con Coordenadas (3,3,"Norte")' do
        robot.initializate(3,3,"Norte")
        robot.calculate_final_route("MM",2,30,30)
        expect(robot.get_posy_final()).to eq (1)      
    end
    it 'Deberia Devolver 4 Para la siguiente secuencia de Instrucciones LLLL Con Coordenadas (3,2,"Sur")    ' do
        robot.initializate(3,2,"Sur")
        robot.calculate_final_route("MM",2,30,30)
        expect(robot.get_posy_final()).to eq (4)      
    end
    #Eje X
    it 'Deberia Devolver 1 Para la siguiente secuencia de Instrucciones MM Con coordenadas (3,3,"Este")' do
        robot.initializate(3,3,"Oeste")
        robot.calculate_final_route("MM",2,30,30)
        expect(robot.get_posx_final()).to eq (1)      
    end
    it 'Deberia Devolver 4 Para la siguiente secuencia de Instrucciones MM Con coordenadas (2,3,"Oeste")' do
        robot.initializate(2,3,"Este")
        robot.calculate_final_route("MM",2,30,30)
        expect(robot.get_posx_final()).to eq (4)      
    end

    #Validar que el auto sigue dentro del terreno 
    it 'Deberia Devolver true Para la siguiente secuencia de Instrucciones MM dentro de terreno (30,30)' do
        robot.initializate(2,3,"Este")
        expect(robot.calculate_final_route("MM",2,30,30)).to eq (true)      
    end
    it 'Deberia Devolver false Para la siguiente secuencia de Instrucciones MMM dentro de terreno (3,3)' do
        robot.initializate(2,3,"Oeste")
        expect(robot.calculate_final_route("MMM",3,3,3)).to eq (false)      
    end
    it 'Deberia Devolver false Para la siguiente secuencia de Instrucciones MM dentro de terreno (5,5)' do
        robot.initializate(2,3,"Este")
        expect(robot.calculate_final_route("MMM",3,5,5)).to eq (true)      
    end
    it 'Deberia Devolver false Para la siguiente secuencia de Instrucciones MMM dentro de terreno (5,5)' do
        robot.initializate(3,3,"Norte")
        expect(robot.calculate_final_route("MMM",3,5,5)).to eq (false)      
    end


end

RSpec.describe Route do
    def route
        @route ||= Route.new
    end 
    it 'Deberia devolver True al iniciar los datos' do
        expect(route.initializate("U")).to eq (true)
    end 
    it 'Deberia devolver U al iniciar los datos con U' do
        route.initializate("U")
        expect(route.get_route()).to eq ("U")
    end 
    it 'Deberia devolver URLLR al iniciar los datos con URLLR' do
        route.initializate("URLLR")
        expect(route.get_route()).to eq ("URLLR")
    end 
    it 'Deberia devolver Arriba al iniciar los datos con U' do
        expect(route.translate('M')).to eq ("Avanzar")
    end 
    it 'Deberia devolver Giro Derecha al iniciar los datos con R' do
        expect(route.translate('R')).to eq ("Giro Derecha")
    end 
    it 'Deberia devolver Giro Izquierda al iniciar los datos con R' do
        expect(route.translate('L')).to eq ("Giro Izquierda")
    end 
end

RSpec.describe Robots do

    def robots
        @robots ||= Robots.new
    end
    #Inicio del la Hash de robots
    it 'Deberia Devolver True Para cuando inicie la Clase' do
        expect(robots.initializate()).to eq (true)
    end

    it 'Deberia Devolver True cuando inserto llave y valor' do
        robots.initializate()
        expect(robots.insert("llave","valor")).to eq (true)
    end

    it 'Deberia Devolver valor cuando envio la llave' do
        robots.initializate()
        robots.insert("llave","valor")
        expect(robots.get("llave")).to eq ("valor")
    end

    it 'Deberia Devolver valor cuando envio la llave' do
        robots.initializate()
        robots.insert("llave","valor")
        expect(robots.get("llave")).to eq ("valor")
    end

    it 'Deberia Devolver el valor cuando elimino el par con la llave' do
        robots.initializate()
        robots.insert("llave","valor")
        expect(robots.delete("llave")).to eq ("valor")
    end

    it 'Deberia Devolver el nil cuando ingreso llave no existente' do
        robots.initializate()
        robots.insert("llave","valor")
        expect(robots.delete("noexiste")).to eq (nil)
    end

    it 'Deberia insertar un robot a robots' do
        def robot
            @robot ||= Robot.new
        end
        robots.initializate()
        robot.initializate(1,1,"Norte")
        expect(robots.insert("1",robot)).to eq (true)
    end

    it 'Deberia devolver un robot al buscar al robot' do
        def robot
            @robot ||= Robot.new
        end
        robots.initializate()
        robot.initializate(1,1,"Norte")
        robots.insert("1",robot)
        expect(robots.get("1").get_orientation()).to eq ("Norte")
    end

end

RSpec.describe Routes do

    def routes
        @routes ||= Routes.new
    end

    # #Inicio del la Hash de rutas
    it 'Deberia Devolver True Para cuando inicie la Clase' do
        expect(routes.initializate()).to eq (true)
    end

    it 'Deberia Devolver True cuando inserto llave y valor' do
        routes.initializate()
        expect(routes.insert("llave","valor")).to eq (true)
    end

    it 'Deberia Devolver valor cuando envio la llave' do
        routes.initializate()
        routes.insert("llave","valor")
        expect(routes.get("llave")).to eq ("valor")
    end

    it 'Deberia Devolver valor cuando envio la llave' do
        routes.initializate()
        routes.insert("llave","valor")
        expect(routes.get("llave")).to eq ("valor")
    end

    it 'Deberia Devolver el valor cuando elimino el par con la llave' do
        routes.initializate()
        routes.insert("llave","valor")
        expect(routes.delete("llave")).to eq ("valor")
    end

    it 'Deberia Devolver el nil cuando ingreso llave no existente' do
        routes.initializate()
        routes.insert("llave","valor")
        expect(routes.delete("noexiste")).to eq (nil)
    end

    # it 'Deberia insertar un robot a robots' do
    #     def route
    #         @route ||= Route.new
    #     end
    #     routes.initializate()
    #     route.initializate(1,1,"Norte")
    #     expect(routes.insert("1",route)).to eq (true)
    # end

    # it 'Deberia devolver un robot al buscar al robot' do
    #     def route
    #         @route ||= Route.new
    #     end
    #     routes.initializate()
    #     route.initializate(1,1,"Norte")
    #     routes.insert("1",robot)
    #     expect(routes.get("1").get_orientation()).to eq ("Norte")
    # end

end