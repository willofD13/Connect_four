#require 'pry-byebug'
class ConnectFour
    attr_accessor :player_1, :player_2

    def initialize(player_1 = nil, player_2 = nil, grid = Array.new(6) {Array.new(7, '_')}, turn = 1)
        @player_1 = player_1 
        @player_2 = player_2 
        @turn = turn
        @grid = grid
        #binding.pry
    end
    

    def display_board
        puts "#{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]} | #{@grid[0][3]} | #{@grid[0][4]} | #{@grid[0][5]} | #{@grid[0][6]}"
        puts "#{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]} | #{@grid[1][3]} | #{@grid[1][4]} | #{@grid[1][5]} | #{@grid[1][6]}"
        puts "#{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]} | #{@grid[2][3]} | #{@grid[2][4]} | #{@grid[2][5]} | #{@grid[2][6]}"
        puts "#{@grid[3][0]} | #{@grid[3][1]} | #{@grid[3][2]} | #{@grid[3][3]} | #{@grid[3][4]} | #{@grid[3][5]} | #{@grid[3][6]}"
        puts "#{@grid[4][0]} | #{@grid[4][1]} | #{@grid[4][2]} | #{@grid[4][3]} | #{@grid[4][4]} | #{@grid[4][5]} | #{@grid[4][6]}"
        puts "#{@grid[5][0]} | #{@grid[5][1]} | #{@grid[5][2]} | #{@grid[5][3]} | #{@grid[5][4]} | #{@grid[5][5]} | #{@grid[5][6]}"
    end

    def introduction
        puts "Welcome to connect four!"
        puts "Player 1, please insert your name"
        @player_1 = gets.chomp
        puts "Player 2, please insert your name"
        @player_2 = gets.chomp
        puts "Every player should place his/her symbol in a socket where 
        there is no emprty space beneath it. First coordinate should be between 
        0 and 5, second coordinate should be netween 0 and 6. The two coordinates 
        should separated by space. Have fun!"
    end

    def play_game
        turn_order until @turn == 43
    end

    def turn_order
        coordinates = player_choice(@player_1) if @turn.odd?
        coordinates = player_choice(@player_2) if @turn.even?
        first_coord = isolate_coordinate(coordinates,0)
        second_coord = isolate_coordinate(coordinates,1)
        add_to_board(first_coord,second_coord,'O') if @turn.odd?
        add_to_board(first_coord,second_coord,'X') if @turn.even?
        display_board
        flattened_grid = @grid.flatten 
        check_for_winner(flattened_grid)
        @turn += 1
    end

    def player_choice(player_name)
        loop do 
            choice = gets.chomp 
            verified_choice = verify_choice(choice)
            return verified_choice

            puts "Input error.Please insert space between coordinates"
        end 
    end

    def verify_choice(choice) 
        return choice if choice.match?(/\s/)
    end

    def isolate_coordinate(string,index)
        array = string.split 
        coordinate = array[index].to_i 
        return coordinate 
    end

    def add_to_board(coord_one,coord_two,symbol) 
        @grid[coord_one][coord_two] = symbol
    end

    def check_for_winner(array) 
        array.each_with_index do |v,i| 
            if  v == "O" && array[i + 6] == v && array[i + 12] == v && array[i + 18] == v
                puts "The winner is #{@player_1}"
                @turn = 43
                break
            elsif
                v == "X" && array[i + 6] == v && array[i + 12] == v && array[i + 18] == v
                puts "The winner is #{@player_2}"
                @turn = 43
                break
            elsif 
                v == 'O' && array[i + 8] == v && array[i + 16] == v && array[i + 24] == v
                puts "The winner is #{@player_1}"
                @turn = 43
                break
            elsif 
                v == "X" && array[i + 8] == v && array[i + 16] == v && array[i + 24] == v
                puts "The winner is #{@player_2}"
                @turn = 43
                break
            elsif
                v == "O" && array[i + 7] == v && array[i + 14] == v && array[i + 21] == v
                puts "The winner is #{@player_1}"
                @turn = 43
                break
            elsif
                v == "X" && array[i + 7] == v && array[i + 14] == v && array[i + 21] == v
                puts "The winner is #{@player_2}"
                @turn = 43
                break
            elsif 
                v == "O" && array[i + 1] == v && array[i + 2] == v && array[i + 3] == v
                puts "The winner is #{@player_1}"
                @turn = 43
                break
            elsif 
                v == "X" && array[i + 1] == v && array[i + 2] == v && array[i + 3] == v
                puts "The winner is #{@player_2}"
                @turn = 43
                break
            else
             nil   
            end
        end
    end

end
