class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates_presence_of :friendly_id

  validates_uniqueness_of :friendly_id
  validates_format_of :friendly_id, :with => /\A[a-z0-9\-]+\z/

  # validates :image, presence: true

  def to_param
     self.friendly_id
   end
end
