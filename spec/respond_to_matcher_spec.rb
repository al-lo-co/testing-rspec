# frozen_string_literal: true

require_relative '../src/hot_chocolate'

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it { is_expected.to respond_to(:drink) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
