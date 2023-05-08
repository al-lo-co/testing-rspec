# frozen_string_literal: true

require_relative '../src/professional_wrestler'

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone cold steve Austin', 'stunner') do
    it 'checks for object attribute and proper values' do
      expect(subject).to have_attributes(name: 'Stone cold steve Austin', finishing_move: 'stunner')
    end
  end
end
