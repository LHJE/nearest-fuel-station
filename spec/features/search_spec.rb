require 'rails_helper'

RSpec.describe 'Search Page' do
  before :each do
    visit root_path

    click_button "Find Nearest Station"
  end

  it "expects path to lead to search page" do
    expect(current_path).to eq(search_path)
  end

  it "expects to see the closest electric fuel station" do
    expect(page).to have_content("Seventeenth Street Plaza")
    expect(page).to have_content("1225 17th St. Denver, CO 80202")
    expect(page).to have_content("Electric")
    expect(page).to have_content("MO: Not Specified")
    expect(page).to have_content("TU: Not Specified")
    expect(page).to have_content("WE: Not Specified")
    expect(page).to have_content("TH: Not Specified")
    expect(page).to have_content("FR: Not Specified")
    expect(page).to have_content("SA: Not Specified")
    expect(page).to have_content("SU: Not Specified")
  end

  it "expects to see the distance to the station" do
    expect(page).to have_content("Distance: 0.1 miles")
  end

  it "exepects to see directions to the station" do
    expect(page).to have_content("Start out going southeast on 17th St toward Larimer St/CO-33.")
    expect(page).to have_content("1225 17TH ST is on the right.")
  end

  it "expects to see travel time" do
    expect(page).to have_content("Travel Time: 00:00:40")
  end

end
