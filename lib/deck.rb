require 'byebug'
class Deck
  attr_reader :deck
  SUITS = [:hearts, :diamonds, :clubs, :spades]


  def initialize
    @deck = generate_cards.shuffle!
  end


  def generate_cards
    cards = []
    SUITS.each do |suit|
      (2..14).each do |rank|
        cards << Card.new(suit, rank)
      end
    end
    cards
  end

  def deal(number = 5)
    deck.pop(number)
  end

end
