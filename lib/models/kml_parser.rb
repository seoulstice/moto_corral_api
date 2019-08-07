require 'nokogiri'
require 'open-uri'

class KMLParser
    attr_reader :data_array
    def initialize(uri)
        @uri = uri
        @data_array = []
    end

    def load_file
        Nokogiri::XML(open(@uri))
    end

    def parse_kml(document)
        document.css("//Placemark ExtendedData").each do |place|
            data =  {}
            data[:address] = place.css('Data')[0].text.strip
            data[:city]    = place.css('Data')[1].text.strip
            data[:state]   = place.css('Data')[2].text.strip
            data[:country] = place.css('Data')[3].text.strip
            data[:zip]     = place.css('Data')[4].text.strip.to_i
            data[:side]    = place.css('Data')[5].text.strip
            data_array << data
        end
    end
end