class ArticlesController < ApplicationController
    before_action  :find_action, only: [:show, :edit, :update, :destroy]

    def show

    end 
    def index
        @articles = Article.all
    end 
    def new
        @article = Article.new
    end 
    def edit
    
    end 
    def create
        @article = Article.new(params_action)
        if @article.save
            flash[:message] = "The article was successfully created."
            redirect_to @article
        else
           render 'new'
        end
    end 
    def update

        if @article.update(params_action)
            flash[:message] = "Article was updated successfully"
            redirect_to @article
        else
            render 'edit'
        end

    end 
    def delete
        @article.destroy
        redirect_to articles_path
    end

    private

    def find_action
        @article = Article.find(params[:id])
    end 
    def params_action
        params.require(:article).permit(:title, :description)
    end 


end 

