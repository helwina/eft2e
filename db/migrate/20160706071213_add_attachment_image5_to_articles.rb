class AddAttachmentImage5ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image5
    end
  end

  def self.down
    remove_attachment :articles, :image5
  end
end
