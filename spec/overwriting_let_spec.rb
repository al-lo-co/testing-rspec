# frozen_string_literal: true

require_relative '../src/programming_language'

RSpec.describe(ProggrammingLanguage) do
  let(:language) { ProggrammingLanguage.new('Python') }

  it { expect(language.name).to eq('Python') }

  context 'with no argument' do
    let(:language) { ProggrammingLanguage.new }
    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
