# frozen_string_literal: true

RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built in Ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 15

    expect(1).to be >= -1
  end

  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be >= 100 }
  end
end
