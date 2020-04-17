class CategoriesController < ApplicationController
 before_action :authenticate_user!, except: [:index, :show]

  def index
    @categories = Categorie.all
    authorize @categories
  end

  def show
    @categorie = Categorie.find(params[:id])
    authorize @categorie
    @articles = @categorie.articles
  end

  def new
    @categorie = Categorie.new
    authorize @categorie
  end

  def create
    @categorie=Categorie.new(categorie_params)
    if @categorie.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @categorie = Categorie.find(params[:id])
    authorize @categorie
  end

  def update
    @categorie.update(categorie_params)
    authorize @categorie
    if @categorie.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @categorie = Categorie.find(params[:id])
    @categorie.destroy
    authorize @categorie
    redirect_to root_path
  end

  private

  def categorie_params
    params.require(:categorie).permit(:name, :photo)
  end

end
