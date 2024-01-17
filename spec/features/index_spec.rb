require "rails_helper"

RSpec.describe "Index Page" do
  describe "As a user" do
    it "When I am on a search result page '/fruits' after making a successful search,I see a link that says 'Find Similar Fruits' by Nutrition Value. When I click this link I am taken to a '/fruits/nutritional' page where I see the names of fruits that have a similar nutritional value" do

      visit "/"

      fill_in "search", with:"baNana"
      click_button("Search")

      expect(current_path).to eq("/fruits")
      expect(page).to have_link("Find Similar Fruits by Nutrition Value")

      click_link("Find Similar Fruits by Nutrition Value")

      expect(current_path).to eq("/fruits/nutritional")
      expect(page).to have_content("Fruit: ")
      expect(page).to have_content("Calories: ")
    end
  end
end