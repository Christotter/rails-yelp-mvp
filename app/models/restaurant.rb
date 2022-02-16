class Restaurant < ApplicationRecord
  # belongs_to :restaurant
  has_many :reviews, dependent: :destroy

  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: CATEGORY }

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

end
