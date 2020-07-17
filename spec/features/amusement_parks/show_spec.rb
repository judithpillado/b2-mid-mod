require 'rails_helper'

RSpec.describe 'Amusement Park Show Page' do
  before(:each) do
    @hershey = AmusementPark.create(name: "Hershey Park", addmission_price: 50)
    @lightning = Ride.create(name: "Lightning Racer", thrill_rating: 8)
    @storm = Ride.create(name: "Storm Runner", thrill_rating: 9)
    @bear = Ride.create(name: "The Great Bear", thrill_rating: 7)
  end

  it "see the name and price of admissions for that amusement park" do
    visit "/amusement_parks/#{amusement_park.id}"
    expect(page).to have_content(@hershey.name)
    expect(page).to have_content(@hershey.addmission_price)
  end

end
