class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :destroy, :update]
    def show
    end

    def index
      @articles = Article.all
    end

    def new
      @article = Article.new
    end

    def create
      # render plain: params[:article]
      # cause error - > @article = Article.new(params[:article]) 
      @article = Article.new(articles_params)
      if @article.save
        flash[:notice] = "Article was created successfully."
        redirect_to @article

      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @article.update(articles_params)
        flash[:notice] = "Article was updated Successfully"
        redirect_to @article
      else
        render 'edit'
      end
    end

    def destroy
      @article.destroy
      redirect_to articles_path
    end





    
    private

    def set_article
        @article = Article.find(params[:id])
    end

    def articles_params
        params.require(:article).permit(:title, :description)
    end
end