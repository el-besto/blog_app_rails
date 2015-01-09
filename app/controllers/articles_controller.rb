class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render :index
  end

  def new
    @article = Article.new
    # envoke :new method; render 'views/articles/new'
    render :new
  end

  def create
    new_article = params.require(:article).permit(:title, :author, :content)
    article = Article.create(new_article)
    # after create, redirect_to show route
    redirect_to "/articles/#{article.id}"
  end

  def show
    @article = Article.find(params[:id])
    render :show
  end

end
