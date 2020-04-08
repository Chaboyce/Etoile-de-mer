class ArticlesController < ApplicationController

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
    @categorie = Categorie.find(params[:categorie_id])
    @article=Article.new
    authorize @article
  end

  def create
    @article=Article.new(article_params)
    @categorie = Categorie.find(params[:categorie_id])
    authorize @article
      if @article.save!
        redirect_to root_path
      else
        render :new
      end
  end

  def edit
    authorize @article
    @article = Article.find(params[:id])
  end

  def update
    @article.update(article_params)
    authorize @article
    if @article.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:name, :categorie, :price, :avatar, :description, :color, :dimensions, :matiere, :conseil, photos: [])
  end

end
