class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.find(params[:id])
  end
  
  def show
    @items = Item.name
  end
  
  def new
    @item = Item.new
  end
end
