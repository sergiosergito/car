class Robots #Insert, get, delete, 

    def initializate ()
        @robots = Hash.new
        @robots.default = 0
        return true
    end
    
    def insert (thekey, theelement)
        @robots.store(thekey, theelement)
        return true
    end
    
end