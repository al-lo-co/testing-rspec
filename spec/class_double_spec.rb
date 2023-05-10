# frozen_string_literal: true

require_relative '../src/card_game'

RSpec.describe CardGame do
  context 'under condition' do
    it 'behaves like' do
      deck = class_double(Deck, build: %w[Ace Queen], shuffle: %w[Ace Queen]).as_stubbed_const
      # deck = class_double('Deck', build: ['Ace', 'Queen'], shuffle: ['Ace', 'Queen']).as_stubbed_const
      # commented means even if Deck doesnt exists it assumes that exists

      expect(deck).to receive :build
      subject.start
      expect(subject.cards).to eq %w[Ace Queen]
    end
  end
end
