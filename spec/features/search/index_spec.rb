require 'rails_helper'

RSpec.describe "Index" do
  describe "As an user" do
    it "I can search for food and get back details" do
      visit "/"
      expect(page).to have_button("Search")
      fill_in :q, with: "sweet potatoes"
      click_on "Search"
      #first result
      expect(current_path).to eq("/foods")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("GTIN/UPC code: 070560951975")
      expect(page).to have_content("Brand Owner: The Pictsweet Company")
      expect(page).to have_content("Ingredients: SWEET POTATOES.")
      #last result
      expect(current_path).to eq("/foods")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("GTIN/UPC code: 095829400193")
      expect(page).to have_content("Brand Owner: C.H. Robinson Company")
      expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
    end
  end
end