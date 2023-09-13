class ConnectFour
    attr_accessor :player_1, :player_2

    def initialize(player_1 = nil, player_2 = nil, grid = Array.new(6) {Array.new(7, '_')}, turn = 1)
        @player_1 = player_1 
        @player_2 = player_2 
        @turn = turn
        @grid = grid
    end

    def display_board(grid)
        puts "#{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]} | #{@grid[0][3]} | #{@grid[0][4]} | #{@grid[0][5]} | #{@grid[0][6]}"
        puts "#{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]} | #{@grid[1][3]} | #{@grid[1][4]} | #{@grid[1][5]} | #{@grid[1][6]}"
        puts "#{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]} | #{@grid[2][3]} | #{@grid[2][4]} | #{@grid[2][5]} | #{@grid[2][6]}"
        puts "#{@grid[3][0]} | #{@grid[3][1]} | #{@grid[3][2]} | #{@grid[3][3]} | #{@grid[3][4]} | #{@grid[3][5]} | #{@grid[3][6]}"
        puts "#{@grid[4][0]} | #{@grid[4][1]} | #{@grid[4][2]} | #{@grid[4][3]} | #{@grid[4][4]} | #{@grid[4][5]} | #{@grid[4][6]}"
        puts "#{@grid[5][0]} | #{@grid[5][1]} | #{@grid[5][2]} | #{@grid[5][3]} | #{@grid[5][4]} | #{@grid[5][5]} | #{@grid[5][6]}"
    end

    def introduction(player1,player2)
        puts "Welcome to connect four!"
        puts "Player 1, please insert your name"
        @player_1 = gets.chomp
        puts "Player 2, please insert your name"
        @player_2 = gets.chomp
        puts "Every player should place his/her symbol in a socket where 
        there is no emprty space beneath it. Have fun!"
    end

    def player_choice(player_name,symbol)
        loop do 
            choice = gets.chomp 
            return choice

            puts "Input error"
        end 
    end
end