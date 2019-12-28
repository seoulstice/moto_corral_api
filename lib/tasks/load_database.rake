require "./lib/models/kml_parser"

desc "Parse Corral data from KML and load database"
task load_database: :environment do
  Corral.destroy_all
  ActiveRecord::Base.connection.reset_pk_sequence!("corrals")

  parser = KMLParser.new(GOOGLE_MAPS_URL)
  noko_obj = parser.load_file
  parser.parse_kml(noko_obj)
  parser.data_array.each do |corral_data_hash|
    Corral.create!(corral_data_hash)
  end
end
