class AddAttachmentPlantToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :plant
    end
  end

  def self.down
    remove_attachment :articles, :plant
  end
end
