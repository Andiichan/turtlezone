require 'rails_helper'

describe "Listings" do
  describe "#index" do
    it "should be accessible" do
      visit listings_path
      expect(page.status_code).to eq(200)
    end
  end

  describe "#new" do
    it "should be accessible" do
      visit new_listing_path

      expect(page.status_code).to eq(200)
    end

    it "should render a form" do
      visit new_listing_path

      expect(page).to have_field("listing[name]")
      expect(page).to have_field("listing[description]")
    end
  end

  describe "#create" do
    it "should create a new listing" do
      visit new_listing_path

      fill_in 'listing[name]', with: "Xbox"
      fill_in 'listing[description]', with: "Useless gaming console"

      expect{click_on "Submit"}.to change{Listing.count}.by(1)
    end
  end

  describe "#edit" do
    it "should be accessible" do
      visit edit_listing_path

      expect(page.status_code).to eq(200)
    end

    it "should render a form" do
      visit edit_listing_path

      expect(page).to have_field("listing[name]")
      expect(page).to have_field("listing[description]")
    end
  end
end
