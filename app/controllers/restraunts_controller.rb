class RestrauntsController < ApplicationController
  def index
    @restraunts = Restraunt.search(params[:q], params[:qa])
  end

  def show
    @restraunt = Restraunt.find(params[:id])
  end

  def new
  end

  def edit
    @restraunt = Restraunt.find(params[:id])
  end

  def create
    @restraunt = Restraunt.new(restraunt_params)

    @restraunt.save
    redirect_to @restraunt
  end

  def update
    @restraunt = Restraunt.find(params[:id])

    if @restraunt.update(restraunt_params)
      redirect_to @restraunt
    else
      render 'edit'
    end
  end

  def destroy
    @restraunt = Restraunt.find(params[:id])
    @restraunt.destroy

  end

  private
  def restraunt_params
    params.require(:restraunt).permit(
    :title,
    :cuisine_id,
    :phone,
    :address,
    :cost,
    :heads,
    :image_url
    )
  end


end
