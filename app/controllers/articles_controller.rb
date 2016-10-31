class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def view
    @article = Article.find_by_title(params[:title])
  end
end
