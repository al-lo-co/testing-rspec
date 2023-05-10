# frozen_string_literal: true

require_relative '../src/person'

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)

      expect(person.a).to eq('Hello')
      expect(person.b).to eq(20)
    end
  end

  describe 'instance_double' do
    it 'just can implement the methods from the class' do
      person = instance_double(Person, a: 'Hello')

      expect(person.a).to eq('Hello')
    end

    it 'stubbed' do
      person = instance_double(Person)
      allow(person).to receive(:a).with(no_args).and_return('Hello')

      expect(person.a).to eq('Hello')
    end
  end
end
