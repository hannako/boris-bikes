require 'bike'

describe Bike do
  let(:bike) { Bike.new }

it 'is working when it is created as a default' do
  expect(bike.working?).to be true
end

it 'can be reported broken' do
  bike.report_broken
  expect(bike.working?).to be false
end

end
