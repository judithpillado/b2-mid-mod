require 'rails_helper'

RSpec.describe 'Mechanics Index Page' do
  before(:each) do
    @sam = Mechanic.create(name: "Sam Mills", years_of_experience: "10")
    @kara = Mechanic.create(name: "Kara Smith", years_of_experience: "11")
  end

  it "can see a list of all mechanic’s names and their years of experience" do
    visit "/mechanics"
    expect(page).to have_content(@sam.name)
    expect(page).to have_content(@sam.years_of_experience)
    expect(page).to have_content(@kara.name)
    expect(page).to have_content(@kara.years_of_experience)
  end

end
