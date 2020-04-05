class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    authorize @articles
  end

  def show
    authorize @article
    @articles = Article.find(params[:id])
  end

  def new
    @article=Article.new
    authorize @article
  end

  def create
    @article=Article.new(article_params)
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
    params.require(:article).permit(:name, :categorie, :price, :photo)
  end

end
