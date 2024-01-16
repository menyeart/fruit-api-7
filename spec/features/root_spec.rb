require "rails_helper"

RSpec.describe "Root Page", type: :feature do
  describe "As a user" do
    it "When I visit the root path ('/'),I see a form with a search box for fruit and a button. When I enter the name of a fruit and click 'Search' I am taken to the '/foods' page and see all of its atrributes." do

      visit "/"

      expect(page).to have_content("Search for Fruit")
      expect(page).to have_button("Search")

      fill_in "search", with:"baNana"
      click_button("Search")
  
      expect(current_path).to eq("/fruits")
      expect(page).to have_content("Banana")
      expect(page).to have_content("Family: Musaceae")
      expect(page).to have_content("Genus: Musa")
      expect(page).to have_content("Name: Banana")
      expect(page).to have_content("Order: Zingiberales")



    # - name
    # - family
    # - order
    # - genus
    # - nutrition value, organized as: 
    #   "Calories: x
    #   Fat: x
    #   Sugar: x
    #   Carbohydrates: x
    #   Protein: x
    #   "
    end
  end
end