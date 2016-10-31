class AddAttachmentPlant3ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :plant3
    end
  end

  def self.down
    remove_attachment :articles, :plant3
  end
end
