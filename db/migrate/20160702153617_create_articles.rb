class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titre
      t.text :description
      t.text :category
      t.text :descriptionlongue
      t.string :objet1col1
      t.string :objet1col2
      t.string :objet2col1
      t.string :objet2col2
      t.string :objet3col1
      t.string :objet3col2
      t.string :objet4col1
      t.string :objet4col2
      t.string :objet5col1
      t.string :objet5col2
      t.string :objet6col1
      t.string :objet6col2
      t.string :objet7col1
      t.string :objet7col2
      t.string :objet8col1
      t.string :objet8col2

    end
  end
end
