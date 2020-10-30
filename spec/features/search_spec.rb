require 'rails_helper'


RSpec.describe 'Navbar' do
  before :each do
    visit root_path

    click_button "Find Nearest Station"
  end

  it "expects path to lead to search page" do
    expect(current_path).to eq(search_path)
  end

end
