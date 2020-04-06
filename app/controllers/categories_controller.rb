class CategoriesController < ApplicationController

  def index
    @categories = Categorie.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

end
