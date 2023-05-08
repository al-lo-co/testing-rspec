# frozen_string_literal: true

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    # For each question, write the code that should go here
    db = double('Database Connection', connect: true, disconect: 'disconect')

    expect(db.connect).to eq(true)
    expect(db.disconect).to eq('disconect')

    fs = double('File System')

    allow(fs).to receive(:read).and_return('Romeo and Juliet')
    allow(fs).to receive(:write).and_return(false)

    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to eq(false)
  end
end
