class RentsController < ApplicationController
  before_action :set_item, only: %i[new create]
  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.item = @item
    if @rent.save
      @rent.item.rented = true
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.item.rented = false
    @rent.destroy
    redirect_to item_path(@rent.item)
  end

  private

  def rent_params
    params.require(:rent).permit(:item_id, :user_id)
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
