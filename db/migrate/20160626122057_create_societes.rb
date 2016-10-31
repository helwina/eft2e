class CreateSocietes < ActiveRecord::Migration
  def change
    create_table :societes do |t|
      t.string :titre
      t.text :paragraphe1
      t.text :paragraphe2
      t.text :paragraphe3
      t.text :paragraphe4
      t.text :paragraphe5
      t.text :paragraphe6
      t.text :paragraphe7
      t.text :paragraphe8

    end
  end
end
