class ArticlesController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @articles = Article.all
    authorize @articles
  end

  def show
    @article = Article.find(params[:id])
    @illustrations = Article.with_attached_photos.find(params[:id])
    authorize @article
    authorize @illustrations
  end

  def new
    @article=Article.new
    authorize @article
  end

  def create
    @article=Article.new(article_params)
    @categorie=Categorie.find(@article.categorie_id)
    authorize @article
      if @article.save!
        redirect_to category_path(@categorie)
      else
        render :new
      end
  end

  def edit
    @article = Article.find(params[:id])
    authorize @article
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    authorize @article
    @categorie=Categorie.find(@article.categorie_id)
    if @article.save!
      redirect_to category_path(@categorie)
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @categorie=Categorie.find(@article.categorie_id)
    @article.destroy
    authorize @article
    redirect_to category_path(@categorie)
  end

  private

  def article_params
    params.require(:article).permit(:name, :categorie_id, :price, :avatar, :description, :color, :dimensions, :matiere, :conseil, photos: [])
  end

end
