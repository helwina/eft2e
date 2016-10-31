class AddAttachmentImage2ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :articles, :image2
  end
end
