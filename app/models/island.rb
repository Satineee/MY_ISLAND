class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
