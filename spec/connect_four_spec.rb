require_relative "../lib/connect_four"
describe ConnectFour do 

    describe "#initialize" do

        it " sends message to Array" do 
            expect(Array).to receive(:new)
            ConnectFour.new
        end 
    end 
end