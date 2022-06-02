class Item < ApplicationRecord
  belongs_to :user
  has_many :rents
  has_one_attached :photo
  CATEGORIES = %w[cameras eletronicos ferramentas esportes instrumentos]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
