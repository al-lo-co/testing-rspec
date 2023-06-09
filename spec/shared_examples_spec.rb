# frozen_string_literal: true

RSpec.shared_examples 'a ruby object with three elements' do
  it 'returns the number of items' do
    expect(subject.length).to eq 3
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }

  include_examples 'a ruby object with three elements'
end

RSpec.describe String do
  subject { { a: 1, b: 2, c: 3 } }

  include_examples 'a ruby object with three elements'
end
