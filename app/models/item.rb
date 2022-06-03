class Item < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :destroy
  has_one_attached :photo

  CATEGORIES = %w[cameras eletronicos ferramentas esportes instrumentos]

  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :photo, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name, against: :name,
  using: {
    tsearch: { prefix: true }
  }

  pg_search_scope :search_by_category, against: :category,
  using: {
    tsearch: { prefix: true }
  }


end
