class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, inclusion: { in: (0..5), allow_nil: false }
  validates :content, presence: true
end
