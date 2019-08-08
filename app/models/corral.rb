require 'geocoder'

class Corral < ApplicationRecord
    geocoded_by :full_address
    acts_as_mappable :lat_column_name => :latitude,
                     :lng_column_name => :longitude
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

    def self.closest_corral(params)
        Corral.closest(origin: [params[:origin_lat], params[:origin_long]]).first
    end

    def self.num_closest_corrals(params)
        Corral.by_distance(origin: [params[:origin_lat], params[:origin_long]])[0...(params[:amount].to_i)]
    end

end
