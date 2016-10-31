class AddAttachmentPlant1ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :plant1
    end
  end

  def self.down
    remove_attachment :articles, :plant1
  end
end
