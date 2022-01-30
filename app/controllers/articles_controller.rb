class ArticlesController < ApplicationController

=begin   
  When an action does not explicitly render a view (or otherwise trigger an HTTP response), 
  Rails will automatically render a view that matches the name of the controller and action (make sure its created). 
  Convention Over Configuration! Views are located in the app/views directory. So the index action will render app/views/articles/index.html.erb by default.
=end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new # this calls the new action view (new.html.erb) and can pass the create @article variable rather than calling the new action
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end
  

  private
  def article_params
    # Basically, you require the name of your array or hash to be in Params (otherwise it’ll throw an error), 
    # and then you permit the individual attributes inside that hash to be used.
    params.require(:article).permit(:title, :body)
  end
end
