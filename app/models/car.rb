class Car < ApplicationRecord
    has_many :location_reports
    validates :licence, uniqueness: true
end
