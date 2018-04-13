require 'rails_helper'

describe "Listings" do
  describe "#index" do
    let!(:listing) { FactoryBot.create(:listing) }
    let!(:second_listing) { FactoryBot.create(:second_listing) }

    it "should be accessible" do
      visit listings_path
      expect(page.status_code).to eq(200)
    end

    it "should have latest listings" do
      visit listings_path

      expect(page).to have_content(listing.name)
      expect(page).to have_content(second_listing.name)
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
    let!(:listing) { FactoryBot.create(:listing) }

    it "should be accessible" do
      visit edit_listing_path(listing)

      expect(page.status_code).to eq(200)
    end

    it "should render a form" do
      visit edit_listing_path(listing)

      expect(page).to have_field("listing[name]")
      expect(page).to have_field("listing[description]")
    end
  end

  describe "#show" do
    let!(:listing) { FactoryBot.create(:listing) }

    it "should be accessible" do
      visit listing_path(listing)
      expect(page.status_code).to eq(200)
    end

    it "should have details of current listing" do
      visit listing_path(listing)

      expect(page).to have_content(listing.title)
      expect(page).to have_content(listing.description)
    end
  end
end
