class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many_attached :photos
  has_one_attached :documents
end
