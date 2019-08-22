# Moto Corral API [![Build Status](https://travis-ci.org/seoulstice/moto_corral_api.svg?branch=master)](https://travis-ci.org/seoulstice/moto_corral_api)
Moto Corral API is a Rails API built with the intention of being used in conjunction with the Moto Corral Finder frontend application.  The API serves up motorcycle parking [corral](http://www.philapark.org/motorcycle-scooter-parking/) data endpoints using data periodically scraped from a Google Maps layer of KML data.  That data is then parsed using [Nokogiri](https://nokogiri.org) and saved into a PostgreSQL database.  Corral data is searchable by distance from a starting point location or by the User's current location using [Geokit](https://github.com/geokit/geokit) to query the database by distance.  
## Setup & Installation  
Fork the Moto Corral API repository and clone it into a directory of your choosing. 
`https://github.com/seoulstice/moto_corral_api.git`  
 
Move into the moto corral api directory and bundle.  
`cd moto_corral_api`  
`bundle install`  
 
From there you will need to set up the database:  
`rails db:create db:migrate`  
 
You will then need to populate your database with data provided by the Philadelphia Parking Authority using a built-in rake task.  Run the following command in the command line:  
`rake load_database`  
 
 You can check to ensure the data was imported correctly by entering the Rails console and ensuring each table is not blank:  

```
rails c  
Corral.all  
```  
If the data is not there, reset your database and try the rake task again: 
```  
rake db:reset  
rake load_database  
```
## Testing
