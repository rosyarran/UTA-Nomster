class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :address, presence: true, length: { maximum: 140, minimum: 5 }
  validates :description, presence: true, length: { maximum: 300, minimum: 10 }
end
