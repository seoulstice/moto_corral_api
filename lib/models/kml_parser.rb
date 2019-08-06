require 'nokogiri'
require 'open-uri'
# require 'geocoder'

class KMLParser

    doc = Nokogiri::XML(open("https://www.google.com/maps/d/u/0/kml?mid=1Dq-upvAE94-uN4aLTgO9mKSNwbI&forcekml=1"))

    doc.css("//Placemark ExtendedData").each do |place|
        # address
        hash =  {
                    # address: "",
                    # city: "",
                    # state: "",
                    # zip: "",
                    # side: ""
                }
        hash[:address] = place.css('Data')[0].text.strip
        hash[:city]    = place.css('Data')[1].text.strip
        hash[:state]   = place.css('Data')[2].text.strip
        hash[:country] = place.css('Data')[3].text.strip
        hash[:zip]     = place.css('Data')[4].text.strip.to_i
        hash[:side]    = place.css('Data')[5].text.strip
        binding.pry

    end


end