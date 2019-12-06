class Routes #Insert, get, delete, 

    def initializate ()
        @routes = Hash.new
        @routes.default = 0
        return true
    end
    
    # def insert (thekey, theelement)
    #     @robots.store(thekey, theelement)
    #     return true
    # end

    # def get (llave)
    #     return @robots[llave]
    # end

    # def delete (llave)
    #     return @robots.delete(llave)
    # end
    
end