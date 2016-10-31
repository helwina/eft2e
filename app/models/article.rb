class Article < ActiveRecord::Base
  has_attached_file :image
  has_attached_file :image1
  has_attached_file :image2
  has_attached_file :image3
  has_attached_file :image4
  has_attached_file :image5
  has_attached_file :plant
  has_attached_file :plant1
  has_attached_file :plant2
  has_attached_file :plant3
  has_attached_file :plant4
  has_attached_file :plant5
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image1, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image2, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image3, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image4, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :image5, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :plant, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :plant1, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :plant2, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :plant3, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :plant4, content_type: /\Aimage\/.*\Z/
  validates_attachment_content_type :plant5, content_type: /\Aimage\/.*\Z/
end
