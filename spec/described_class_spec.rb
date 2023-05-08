# frozen_string_literal: true

require_relative '../src/king'

RSpec.describe King do
  subject { described_class.new('Bla') }
  let(:louis) { described_class.new('Lou') }

  it 'represent a person' do
    expect(subject.name).to eq 'Bla'
    expect(louis.name).to eq 'Lou'
  end
end
