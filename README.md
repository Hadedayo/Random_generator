# Random_generator
A program that generates random information. It has a class Generator that contains different methods to get data using a Faker gem and a postcode API.

## Installing the Repository
To access this repository, clone using HTTPS by copying the HTTPS link and running 'git clone <i>insert https link here</i>'

## Creating Methods
There are methods within the Generator class that have been created using;

 Faker extracts information from the Faker library that generates fake data.

 HTTParty encapsulates HTTP. The HTTParty module exposes all of the normal HTTP request methods, like GET, POST, PUT, and DELETE. So, for example, the method 'get_random_postcode' makes a GET request to a URL with the following code:

  response =
      HTTParty.get("http://api.postcodes.io/random/postcodes")

 The object returned from HTTParty.get is an HTTParty::Response object containing the JSON that was returned from the site, so JSON is used to parse the object.
