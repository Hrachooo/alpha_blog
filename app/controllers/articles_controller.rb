class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id])
    end 
    def index
        @articles = Article.all
    end 
    def create
        @article = Article.new(params.require(:articles).permit(:title, :description))
        @article.save
        redirect_to @article
    end
    def new
    end

end
