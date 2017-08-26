class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
  end

  def create
    @cuisine = Cuisine.new(params.require(:cuisine).permit(:cname))

    @cuisine.save
    redirect_to @cuisine
  end
end
