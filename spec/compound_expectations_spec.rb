# frozen_string_literal: true

RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end
end

RSpec.describe [1, 2, 3] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(1).or eq(2).or eq(3)
  end
end

RSpec.describe 'something' do
  it { expect('firestruck').to start_with('fire').and end_with('truck') }

  it { expect([4, 8, 15, 16, 23, 42]).to include(42).and start_with([4, 8, 15]) }
end
