class ItemsController < ApplicationController
  before_action :find_item, only: :order
  
  def index
    @items = Item.all
  end

  def order
    ItemOrder.create(item_id: params[:id])
    redirect_to root_path
  end

  private

  def find_item
    Item.find(params[:id])
  end
end