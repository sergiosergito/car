class Terrain
    def initializate (x,y)
        @DimX = x
        @DimY = y
        true
    end
    def get_DimX ()
        return @DimX
    end
    def get_DimY ()
        return @DimY
    end

    def validate_terrain()
        if (@DimX == 0 || @DimY == 0 || @DimX < 0 || @DimY < 0)
            resp = false
        else 
            resp = true
        end
        return resp
    end
end