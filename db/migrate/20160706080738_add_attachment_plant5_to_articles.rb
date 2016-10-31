class AddAttachmentPlant5ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :plant5
    end
  end

  def self.down
    remove_attachment :articles, :plant5
  end
end
