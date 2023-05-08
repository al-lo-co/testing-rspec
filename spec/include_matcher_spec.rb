# frozen_string_literal: true

RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
    end

    it { is_expected.to include('choc') }
  end

  describe [1, 2, 3] do
    it 'checks for substring inclusion' do
      expect(subject).to include(1)
    end

    it { is_expected.to include(2) }
  end

  describe({ a: 1, b: 3 }) do
    it 'checks for substring inclusion' do
      expect(subject).to include(:a)
    end

    it { is_expected.to include(:b) }
  end

  describe({ a: 1, b: 3 }) do
    it 'checks for substring inclusion' do
      expect(subject).to include(a: 1)
    end

    it { is_expected.to include(b: 3) }
  end
end
