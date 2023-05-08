# frozen_string_literal: true

RSpec.describe Array do
  it 'should be empty initially' do
    expect(subject.length).to eq 0

    subject.push('something')

    expect(subject.length).to eq 1
  end
end
