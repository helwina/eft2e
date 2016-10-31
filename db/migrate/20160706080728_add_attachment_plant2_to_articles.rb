class AddAttachmentPlant2ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :plant2
    end
  end

  def self.down
    remove_attachment :articles, :plant2
  end
end
