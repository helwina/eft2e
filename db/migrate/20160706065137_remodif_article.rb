class RemodifArticle < ActiveRecord::Migration
  def change
    add_column(:articles, :image1, :string)
  end
end
