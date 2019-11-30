require_relative "Cell"

class Terrain
    attr_accessor :rows, :cols, :matrix
    def initialize(rows,cols)
        @rows = rows
        @cols = cols
        @matrix = Array.new(@rows) {Array.new(@cols){Cell.new()}}

    end
end