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
                symbol = 'O'
                error_message = "Please insert space between coordinates"
                expect(game_choice).not_to receive(:puts).with(error_message)
                game_choice.player_choice(name,symbol)
            end
        end
    end

    describe "#verify_choice" do 

        context "when coordinates have space between them" do
            subject(:game_verify) { described_class.new}

            it "returns player's choice" do 
                valid_input = '5 6'
                expect(game_verify).to receive(:verify_choice).and_return(valid_input)
                game_verify.verify_choice(valid_input)
            end 

            it "returns nil when there is no space" do 
                invalid_input = '56'
                expect(game_verify).to receive(:verify_choice).and_return(nil)
                game_verify.verify_choice(invalid_input)
            end

        end
    end

    describe "#isolate_coordinate" do 
        subject(:game_coordinates) { described_class.new }

        it "returns coordinate as an integer" do 
            string = '5 6'
            index = 0
            integer = game_coordinates.isolate_coordinate(string,index)
            expect(integer).to eq(5)
        end
    end
end