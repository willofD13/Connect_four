require_relative "../lib/connect_four"
describe ConnectFour do 

    describe "#initialize" do

        it " sends message to Array" do 
            expect(Array).to receive(:new)
            ConnectFour.new
        end 
    end 

    describe "#player_choice" do
        subject(:game_choice) { described_class.new}

        context "when player gives valid input" do 
            before do 
                valid_input = '5 6'
                allow(game_choice).to receive(:gets).and_return(valid_input)
            end

            it "exits the loop when given valid input" do
                name = 'leon'
                error_message = "Please insert space between coordinates"
                expect(game_choice).not_to receive(:puts).with(error_message)
                game_choice.player_choice(name)
            end
        end
    end

    describe "#verify_choice" do 

        context "when coordinates have space between them" do
            subject(:game_verify) { described_class.new }

            xit "returns player's choice" do 
                expect(game_verify).to receive(:verify_choice).and_return(valid_input)
                game_verify.player_choice(valid_input)
            end 

            xit "returns nil when there is no space" do 
                invalid_input = '56'
                expect(game_verify).to receive(:verify_choice).and_return(nil)
                game_verify.player_choice(invalid_input)
            end

        end
    end

    describe "#isolate_coordinate" do 
        subject(:game_coordinates) { described_class.new }

        xit "returns coordinate as an integer" do 
            string = '5 6'
            index = 0
            integer = game_coordinates.isolate_coordinate(string,index)
            expect(integer).to eq(5)
        end
    end

    describe "#add_to_board" do 
        subject(:game_board) { described_class.new} 

        xit "adds the player symbol in the coordinates place" do 
            number1 = 5
            number2 = 6
            symbol = 'O'
            board = game_board.instance_variable_get(:@grid)
            game_board.add_to_board(number1,number2,symbol)
            expect(board[number1][number2]).to eq(symbol)
        end 
    end

    describe "#check_for_winner" do 
        subject(:end_game) { described_class.new("leon") } 
        
        xit "exits the loop with across combination" do 
            array = Array.new(42)
            array[0] = 'O'
            array[1] = 'O'
            array[2] = 'O'
            array[3] = 'O'
            winning_message = "The winner is leon"
            expect(end_game).to receive(:puts).with(winning_message)
            end_game.check_for_winner(array)
        end

        xit "exits the loop with down combination" do 
            array = Array.new(42)
            array[0] = 'O'
            array[7] = 'O'
            array[14] = 'O'
            array[21] = 'O'
            winning_message = "The winner is leon"
            expect(end_game).to receive(:puts).with(winning_message)
            end_game.check_for_winner(array)
        end

        xit "exits the loop with diagonal combination" do 
            array = Array.new(42)
            array[0] = 'O'
            array[8] = 'O'
            array[16] = 'O'
            array[24] = 'O'
            winning_message = "The winner is leon"
            expect(end_game).to receive(:puts).with(winning_message)
            end_game.check_for_winner(array)
        end
        
    end


end