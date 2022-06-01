class ItemsController < ApplicationController
  before_action :set_user, only: %i[new create]
  before_action :set_item, only: %i[show edit update destroy]
  def index
    @items = policy_scope(Item)
  end

  def show
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @user = current_user
    @item.user = @user
    authorize @item
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def search
    @search = params[:search][:query]
  end

  def my_items
    @items = policy_scope(Item).where(user: current_user)
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to my_items_items_path, notice: 'Item was successfully destroyed.'
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :photo)
  end

  def set_user
    @user = current_user
  end

  def set_item
    @item = Item.find(params[:id])
    authorize @item
  end
end
