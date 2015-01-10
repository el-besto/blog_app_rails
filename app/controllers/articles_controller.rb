class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    # envoke :new method; render 'views/articles/new'
  end

  def create
    new_article = params.require(:article).permit(:title, :author, :content)
    article = Article.create(new_article)
    # after create, redirect_to show route
    redirect_to article #"/articles/#{article.id}"
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    new_article = params.require(:article).permit(:title, :author, :description)
    article = Article.create(new_article)
    redirect_to article_path(article)
  end

  def update
    article = Article.find(params[:id])

    # get updated attributes
    updated_attributes = params.require(:article).permit(:title, :author, :content)

    # update the articles
    article.update_attributes(updated_attributes)

    # redirect_to show
    redirect_to article_path(article)
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
  end

end
