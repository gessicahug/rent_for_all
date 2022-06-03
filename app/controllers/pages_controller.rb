class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @items = Item.where(rented: false)
  end
end
