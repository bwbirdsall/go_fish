require 'rspec'
require 'gofish'
require 'deck'
require 'card'

describe Gofish do
  it 'initializes as a Gofish' do
    new_game = Gofish.new
    new_game.should be_an_instance_of Gofish
  end

  it 'creates 5 card hands for player1 and player2' do
    new_game = Gofish.new
    new_game.player1.length.should eq 5
    new_game.player2.length.should eq 5
  end

  describe '.guess' do
    it 'should return true if the card is moved or false for go fish' do
      new_game = Gofish.new
      new_game.guess("player1", 3)
      new_game.player1.length.should eq 6
    end
  end

end
