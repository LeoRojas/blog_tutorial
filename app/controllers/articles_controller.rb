class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show, :search]

  def search
    unless params[:q].blank?
      @articles = Article.where("title LIKE ?", "%#{params[:q]}%").or(Article.where("text LIKE ?", "%#{params[:q]}%"))
    end
  end

  def index
    # @articles = Article.all
    #Article.order(:name)
    page = params[:page] ? params[:page] : 1
    @articles = Article.page(page)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    # @article = Article.new(title: params["article"]["title"], text: params["article"]["text"])
   
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to articles_path
  end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
