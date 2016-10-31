class AddAttachmentImage3ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image3
    end
  end

  def self.down
    remove_attachment :articles, :image3
  end
end
