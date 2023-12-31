class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :content, presence: true, length: { maximum: 140 }
end
