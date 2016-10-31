class CreateRessources < ActiveRecord::Migration
  def change
    create_table :ressources do |t|
      t.string :titre
      t.text :description
      t.string :elements1
      t.string :elements2
      t.string :elements3
      t.string :elements4
      t.string :elements5
      t.string :elements6
      t.string :elements7
      t.string :elements8
      t.string :elements9
      t.string :elements10
    end
  end
end
