# frozen_string_literal: true

RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'after context'
  end

  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'after example'
  end
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq true
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq false
    end
  end
end
