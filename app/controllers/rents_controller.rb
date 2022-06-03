class RentsController < ApplicationController
  before_action :set_item, only: %i[new create]
  def index
    @rents = policy_scope(Rent)
  end

  def create
    @rent = Rent.new(item: @item, user: current_user)
    authorize @rent
    @rent.item.rented = true
    @rent.save
    @item.rented = true
    @item.save
    redirect_to rents_path, notice: "O item #{@item.name} foi alugado."
  end

  def destroy
    @rent = Rent.find(params[:id])
    authorize @rent
    @item = @rent.item
    @item.rented = false
    @item.save
    @rent.destroy
    redirect_to item_path(@rent.item), notice: "O item #{@rent.item.name} foi devolvido."
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
