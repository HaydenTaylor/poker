require 'rspec'
require 'card'

describe Card do
let(:new_card) { Card.new(:diamonds, 4)}

  describe "::initialize" do
    it "initializes with a suit and a rank" do
      expect(new_card.suit).to eq(:diamonds)
      expect(new_card.rank).to eq(4)
    end
  end

end
