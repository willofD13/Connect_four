class ConnectFour
    def initialize(player_1 = nil, player_2 = nil, grid = Array.new(6) {Array.new(7, '_')}, turn = 1)
        @player_1 = player_1 
        @player_2 = player_2 
        @turn = turn
        @grid = grid
    end
end