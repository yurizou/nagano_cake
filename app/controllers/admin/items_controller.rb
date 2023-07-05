class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
    @genres = Genre.all
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item.id)
    end
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def edit
    
  end
  
  def update
    
  end
end
