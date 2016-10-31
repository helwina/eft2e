class AddAttachmentImage4ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :image4
    end
  end

  def self.down
    remove_attachment :articles, :image4
  end
end
