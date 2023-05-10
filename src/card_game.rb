# frozen_string_literal: true

require_relative './deck'

# class card_game
class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end
