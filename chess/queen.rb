class Queen < Piece 
    include Slideable

    def symbol
        :Q
    end

    private
    def move_dirs
        horizontal_dirs + diagonal_dirs
    end
end