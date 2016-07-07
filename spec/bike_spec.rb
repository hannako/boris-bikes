require 'bike'
describe Bike do
  it {is_expected.to respond_to (:working?)}

it 'responds to the method .working?' do
expect(subject).to respond_to :working?
end
end
