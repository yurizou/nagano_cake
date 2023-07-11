class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.new
  end
  
  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end
  
  def new
    @item = Item.new
  end
end
