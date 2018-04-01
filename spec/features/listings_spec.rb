require 'rails_helper'

describe "Listings" do
  describe "#index" do
    it "should be accessible" do
      visit listings_path
      expect(page.status_code).to eq(200)
    end
  end
end
