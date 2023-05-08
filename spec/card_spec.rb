# frozen_string_literal: true

require_relative '../src/card'

RSpec.describe(Card) do
  let(:subject) { described_class.new(rank, suit) }
  let(:suit) { 'Spades' }
  let(:rank) { 'Ace' }

  before do
    p 'This is some text'
  end
  it 'has a rank' do
    expect(subject.rank).to eq(rank)
  end

  it 'has a suit' do
    expect(subject.suit).to eq(suit)
  end
end
