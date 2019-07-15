class ArticlesController < ApplicationController
  def create
    @article = Article.new(permited_params)
    @article.save

    redirect_to @article
  end

  def show
    @article = Article.find_by(params[:id])
  end

  def new
  end

  private
    def permited_params
      params.require(:article).permit(:title, :text)
    end
end
