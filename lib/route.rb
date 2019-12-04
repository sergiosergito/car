class Route
    def initializate(route_input)
        @route = route_input
        @tam = route_input.size
        @vector_route = []
        return true
    end
    def get_route()
        return @route
    end
    def get_tam()
        return @tam
    end

    def translate(data)
        if data=='M'
            resp = 'Avanzar'
             # @vector_route[i] = 'Arriba'
         end
         if data=='R'
            resp = 'Giro Derecha'
             # @vector_route[i] = 'Derecha'
         end
         if data=='L'
            resp = 'Giro Izquierda'
            # @vector_route[i] = 'Izquierda'
         end
         return resp
    end

    def translate_Route()
        for value in 0..@tam-1 do
            @vector_route[value] = translate(@route[value])
        end
        return @vector_route
    end

end