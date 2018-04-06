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

      expect(page.status_code).to (eq200)
    end

    it "should render a form" do
      visit new_listing_path

      expect(page).to have_field("listing[name]")
      expect(page).to have_field("listing[description]")
    end
  end
end
