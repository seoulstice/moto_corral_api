require 'geocoder'

class Corral < ApplicationRecord
    geocoded_by :full_address
    after_validation :geocode
    validates_presence_of :address,
                          :city,
                          :state,
                          :zip,
                          :country,
                          :side

    def full_address
        [address, city, state, country].compact.join(', ')
    end





end
