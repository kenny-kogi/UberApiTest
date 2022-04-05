class LocationReport < ApplicationRecord
    belongs_to :car

    validates :latitude, presence: true
    validates :longitude, presence: true
    validates :device_id, presence: true
end
