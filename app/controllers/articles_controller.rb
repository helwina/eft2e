class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(id: :desc)
  end

  def view
    @article = Article.find_by_title(params[:title])
  end
end
