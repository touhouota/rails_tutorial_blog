class ArticlesController < ApplicationController
  def create
    render plain: params[:article].inspect
  end

  def new
  end
end
