require 'rails_helper'

feature "user can search members of nation" do 
    scenario "user selects nation name" do

      visit '/'

      select "Fire Nation", from: :nation
      click_on "Search For Members"
      
      expect(current_path).to eq("/search")
      expect(page).to have_content("20 total members")
      
      expect(page).to have_css(".member", count: 20)

      within(first(".member")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".img")
        expect(page).to have_css(".allies")
        expect(page).to have_css(".enemies")
        expect(page).to have_css(".affiliation")
      end
    end 
end 






# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (i.e. 20)
# And I should see a list with the detailed information for the 20 members of the Fire Nation.
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has