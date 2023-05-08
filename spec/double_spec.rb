# frozen_string_literal: true

RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stuntman = double('Mr. Danger', fall_off_ladder: 'true')

    stuntman.fall_off_ladder

    expect(stuntman.fall_off_ladder).to eq('true')
  end

  it 'allow' do
    stuntman = double('Mr. Danger')

    allow(stuntman).to receive(:fall_off_ladder).and_return('true')

    expect(stuntman.fall_off_ladder).to eq('true')
  end
end
