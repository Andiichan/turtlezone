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

  # Write it here
  def show
    @listing = Listing.find(params[:id])
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update(params.require(:listing).permit(:name, :description))
      redirect_to listings_path, notice: "Listing was successfully updated!"
    else
      render :edit, notice: "There wasn error processing your request!"
    end
  end
end
