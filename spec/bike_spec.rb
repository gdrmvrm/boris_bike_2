require 'bike'

describe Bike do
  it 'responds to working? method' do
    expect(subject).to respond_to(:working?)
  end

  it 'respond to broken? method' do
    expect(subject).to respond_to(:report_broken)
  end

  it 'can report a broken bike' do
    subject.report_broken
    expect(subject).to be_broken
  end
end