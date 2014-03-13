require 'rspec'
require 'card'
require 'deck'

describe Deck do

  it 'builds a deck of 52 cards' do
    new_deck = Deck.new
    new_deck.cards.length.should eq 52
  end



end

