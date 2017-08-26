class AreasController < ApplicationController
  def show
    @area = Area.find(params[:id])
  end

  def new
  end

  def create
    @area = Area.new(params.require(:area).permit(
    :city,
    :area
    ))

    @area.save
    redirect_to @area
  end

end
