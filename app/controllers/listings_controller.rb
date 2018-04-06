class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(params.require(:listing).permit(:name, :description))

    if @listing.save
      redirect_to listings_path, notice: "Listing was successfully created!"
    else
      render :new
    end
  end

  def edit
  end
end
