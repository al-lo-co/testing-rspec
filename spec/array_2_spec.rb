# frozen_string_literal: true

RSpec.describe Array do
  subject(:sally) do
    ['ex', 1]
  end

  it 'should have two elements' do
    expect(subject.length).to eq 2
    subject.pop
    expect(subject.length).to eq 1
  end

  it 'should sally be the same as subject' do
    expect(sally).to eq subject
  end
end
