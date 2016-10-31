class AddAttachmentImage1ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image1
    end
  end

  def self.down
    remove_attachment :articles, :image1
  end
end
