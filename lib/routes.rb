class Routes #Insert, get, delete, 

    def initializate ()
        @routes = Hash.new
        @routes.default = 0
        return true
    end
    
    def insert (thekey, theelement)
        @routes.store(thekey, theelement)
        return true
    end

    # def get (llave)
    #     return @routes[llave]
    # end

    # def delete (llave)
    #     return @routes.delete(llave)
    # end
    
end