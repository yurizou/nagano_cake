class Admin::GenresController < ApplicationController
  def index
    @genres = Genre.all
  end
  
  def edit
    
  end
  
  def create
    @genre = Genre.new
  end
  
  def update
  end
end
