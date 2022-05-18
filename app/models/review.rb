class Review < ApplicationRecord
  belongs_to :restaurant

  # A review must have content and a rating.
  validates :content, :rating, presence: true
  # A review’s rating must be a number between 0 and 5.
  validates :rating, inclusion: { in: 0..5, message: 'Should be between 0 to 5' }, numericality: true
end
