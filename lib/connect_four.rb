class ConnectFour
    def initialize(player_1 = nil, player_2 = nil)
        @player_1 = player_1 
        @player_2 = player_2 
        @turn = 1 
        @grid = Array.new(6) {Array.new(7, '_')}
    end
end