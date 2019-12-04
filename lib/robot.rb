class Robot
    def initializate (x,y,orientation_value)
        @PositionX = x
        @PositionY = y
        @PositionX_final = x
        @PositionY_final = y
        @Orientation = orientation_value
        @Orientation_final = orientation_value
        return true
    end

    def set_final_position(x,y,orientation_value)
        @PositionX_final = x
        @PositionY_final = y
        @Orientation_final = orientation_value
    end

    def get_posx_final ()
        return @PositionX_final
    end
    def get_posy_final ()
        return @PositionY_final
    end
    def get_orientation_final ()
        return @Orientation_final
    end


    def get_posx ()
        return @PositionX
    end
    def get_posy ()
        return @PositionY
    end
    def get_orientation ()
        return @Orientation
    end


    
    def validate_position_car()
        if (@PositionX == 0 || @PositionY == 0 || @PositionX < 0 || @PositionY < 0)
            resp = false
        else 
            resp = true
        end
        return resp
    end
    
    def validate_position_car_tarrain(dimx,dimy)
        if ((@PositionX > dimx || @PositionY > dimy) || validate_orientation()==false)
            resp = false
        else
            resp = true
        end 
        return resp
    end
    
    def validate_orientation()
        if (@Orientation == "Norte" || @Orientation == "Este" || @Orientation ==  "Oeste" || @Orientation == "Sur" || 
            @Orientation == "norte" || @Orientation == "este" || @Orientation == "oeste" || @Orientation == "sur")
            resp = true
        else
            resp = false
        end
        return resp
    end

    def new_orientation_L()
        case @Orientation_final
            when "Norte"
                @Orientation_final = "Oeste"
            when "Este"
                @Orientation_final = "Norte"
            when "Oeste"
                @Orientation_final = "Sur"
            when "Sur"
                @Orientation_final = "Este"
        end
    end

    def new_orientation_R()
        case @Orientation_final
            when "Norte"
                @Orientation_final = "Este"
            when "Este"
                @Orientation_final = "Sur" 
            when "Oeste"
                @Orientation_final = "Norte"
            when "Sur"
                @Orientation_final = "Oeste"
        end 
    end

    def new_final_position()
        case @Orientation_final
            when "Norte"
                @PositionY_final = @PositionY_final - 1
            when "Este"
                @PositionX_final = @PositionX_final + 1 
            when "Oeste"
                @PositionX_final = @PositionX_final - 1
            when "Sur"
                @PositionY_final = @PositionY_final + 1
        end     
    end

    def validate_robot_inside_terrain(dimx_terrain,dimy_terrain)
        if (@PositionX_final == dimx_terrain+1 ||  @PositionY_final == dimy_terrain+1 || @PositionX_final == 0 ||  @PositionY_final == 0)
            resp = false
        else
            resp = true
        end 
        return resp
    end

        
    def calculate_final_route(route, tam_route,dimx_terrain,dimy_terrain)
    
        for value in 0..tam_route-1 do
            if (route[value]=="M")
                new_final_position()
            else
                if (route[value]=="L")
                    new_orientation_L()
                else
                    new_orientation_R()
                end
            end     
            if (validate_robot_inside_terrain(dimx_terrain,dimy_terrain)==true)        
                resp =true
            else
                resp =false
                break
            end
        end
        return resp
    end
end