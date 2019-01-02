require "rails_helper"

describe "user" do
  it "can search SW character name and return character data" do
    #As a user
    # When I visit "/"
    visit root_path
    # And I fill in the search form with: Luke
    fill_in :q, with: "Luke"
    # And I click "Search"
    click_on "Search"
    # Then I should be on page "/search"
    expect(current_path).to eq(search_path)
    # The I should see a single search result.
    # For the search result I should see their name, height, mass, birth year, gender and species.
    expect(page).to have_content("Name: ")
    expect(page).to have_content("Height: ")
    expect(page).to have_content("Mass: ")
    expect(page).to have_content("Birth Year: ")
    expect(page).to have_content("Gender: ")
  end
end
