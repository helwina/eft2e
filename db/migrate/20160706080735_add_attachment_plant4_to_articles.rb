class AddAttachmentPlant4ToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :plant4
    end
  end

  def self.down
    remove_attachment :articles, :plant4
  end
end
