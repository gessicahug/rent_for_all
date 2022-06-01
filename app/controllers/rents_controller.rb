class RentsController < ApplicationController
  before_action :set_item, only: %i[new create]
  def index
    @rents = policy_scope(Rent)
  end

  # alugar
  # def new
  #   @rent = Rent.new
  # end

  def create
    @rent = Rent.new(item: @item, user: current_user)
    authorize @rent
    # @rent.item = @item
    # @rent.user = current_user
    if @rent.save
      @rent.item.rented = true
      redirect_to item_path(@item), notice: "#{@item.name} was rent"
    else
      render :new
    end
  end

  # cancelar compra

  def destroy
    @rent = Rent.find(params[:id])
    @rent.item.rented = false
    @rent.destroy
    redirect_to item_path(@rent.item)
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
