class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def show
    @items = Item.name
  end
end
