class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
