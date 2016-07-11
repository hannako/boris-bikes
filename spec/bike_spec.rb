require 'bike'

describe Bike do
  subject(:bike) { Bike.new }

  it 'can be reported that the bike is broken' do
    bike.report_broken
    expect(bike).to be_broken
  end

end
