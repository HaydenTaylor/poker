require 'rspec'
require 'deck'

describe Deck do
  let(:new_deck) { Deck.new }
  describe "::initialize" do
    it "creates a deck of 52 cards" do
      expect(new_deck.deck.length).to eq(52)
    end
  end

  describe '#deal' do
    it "returns 5 card objects" do
      expect(:new_deck.deal.count).to eq(5)
      expect(:new_deck.deal.all? {|card| card.is_a?(Card)}).to_be true
    end
  end

end
