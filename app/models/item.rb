class Item < ApplicationRecord
  belongs_to :user
  has_many :rents
  has_one_attached :photo
end
