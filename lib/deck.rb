class Deck

  attr_reader :cards

  def initialize
    numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']

    @cards = []
    suits.each do |suit|
      numbers.each do |number|
        new_card = Card.new(number, suit)
        @cards << new_card
      end
    end
  end



end
