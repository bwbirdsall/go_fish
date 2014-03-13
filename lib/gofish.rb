class Gofish
  attr_reader :player1, :player2

  def initialize
    @game_deck = Deck.new
    deal
  end

  def deal
    @game_deck.cards.shuffle!
    @player1 = []
    @player2 = []
    for i in 1..5
      @player1 << @game_deck.cards.shift
      @player2 << @game_deck.cards.shift
    end
  end

  def guess(player, card_value)
    card_indices = []
    if player == "player1"
      player2.each_with_index do |card, index|
        if card.value == card_value
          card_indices << index
        end
      end
      if card_indices.length != 0
        card_indices.each do |index|
          player1 << player2.delete_at(index)
        end
      else
        player1 << @game_deck.cards.shift
      end
    else
      player1.each_with_index do |card, index|
        if card.value == card_value
          card_indices << index
        end
      end
      if card_indices.length != 0
        card_indices.each do |index|
          player2 << player1.delete_at(index)
        end
      else
        player2 << game_deck.cards.shift
      end
    end
    card_indices.length > 0
  end

end

# h2, h3, h4, h5, h6, h7, h8, h9, h10, hJ, hQ, hK, hA
# d2, d3, d4, d5, d6, d7, d8, d9, d10, dJ, dQ, dK, dA
# s2, s3, s4, s5, s6, s7, s8, s9, s10, sJ, sQ, sK, sA
# c2, c3, c4, c5, c6, c7, c8, c9, c10, cJ, cQ, cK, cA


# classes? Player < hand, matches, Deck < track remaining cards
