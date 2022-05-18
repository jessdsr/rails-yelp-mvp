class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # A restaurant must have a name, an address and a category.
  validates :name, :address, :category, presence: true
  # Category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"]
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: CATEGORIES }
end
