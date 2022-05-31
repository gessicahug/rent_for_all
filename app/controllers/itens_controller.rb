class ItensController < ApplicationController
  def index
    @itens = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render :new
    end
  end

  def search
    @search = params[:search][:query]
  end 

  private

  def item_params
    params.require(:item).permit(:name, :description, :price)
  end
end
