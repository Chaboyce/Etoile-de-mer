class CategoriesController < ApplicationController

  def index
    @categories = Categorie.all
    authorize @categories
  end

  def show
    @categorie = Categorie.find(params[:id])
    authorize @categorie
    @articles = @categorie.articles
  end

end
