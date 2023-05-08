# frozen_string_literal: true

RSpec.describe 'be matchers' do
  it 'can test for truththiness' do
    expect(true).to be_truthy
    expect('hello').to be_truthy
    expect(-1).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 2 }
    expect(my_hash[:b]).to be_nil
  end

  it 'should be empty' do
    expect({}).to be_empty
  end

  it 'should all be 0' do
    expect([0, 1, 2]).to all(be >= 0)
  end

  it 'should be truthy' do
    expect(:hello).to be_truthy
  end
end
