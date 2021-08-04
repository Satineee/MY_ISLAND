class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
