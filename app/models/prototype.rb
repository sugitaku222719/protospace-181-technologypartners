class Prototype < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  validates :image, :title, :catch_copy, :concept, presence: true
  
end
