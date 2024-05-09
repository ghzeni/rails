class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # renders views/articles/new.html.erb by default
  def new 
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      #* without redirect_to, if the user refreshes the page, 
      #* the browser will make the same request, and the 
      #* mutation will be repeated.
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
  
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end
