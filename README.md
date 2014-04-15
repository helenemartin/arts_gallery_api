# ArtsGalleryApi

## Installation

Add this line to your application's Gemfile:

    gem 'arts_gallery_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arts_gallery_api

## Using the Arts Gallery API gem.

This gem will let you retrieve information on galleries and exhibtions, create and delete tickets from an API listing art galleries.


To implement the Arts Gallery API wrapper you must first require 'arts_gallery_api' in the file and then include the module within the class where you will be using the API wrapper `include ArtsGalleryApi` and then instantiate either a `gallery = ArtsGalleryApi::Gallery.new` or a ticket `ticket = ArtsGalleryApi::Ticket.new` object.

### To retrieve all the galleries you must do the following
1. `gallery.all` which retrieves all the Galleries

2. `gallery.response` this is the instance variable the response is stored in once the api call is made and the previous method returned the following reponse
````{"galleries" => [{ "name" => "Hayward Gallery", "url" => "/galleries/1",
````"exhibitions" => "/galleries/1/exhibitions" }] }

### For a single gallery
1. `gallery.retrieve_a_gallery(1)` this retrieves a gallery based on the id passed into the method

2. `gallery.response` the response variable contains a hash of the values for the gallery
````{"id" => 1,"name" => "Hayward Gallery","description" => "Hayward Gallery"}
````

### For a galleries exhibitions
1. `gallery.get_gallery_exhibitions(2)` this retrieves a gallery based on the id passed into the method

2. `gallery.response` has an array of the the exhibitions at a given gallery 
```` {"exhibitions" => [{"name" => "Futurism Then And Now","gallery_name" => "Hayward Gallery",
````"url" => "/exhibitions/1","gallery_url" => "/galleries/1"}]}

### To get exhibitions listing
1.`gallery.get_exhibition(3)` this retrieves a listing of the exhibitions 

2.`gallery.response` has a hash which contains a single exhibition
````{"id" => 1,"name" => "Futurism Then And Now", "entry_fee" => "£15.00"}
````
### To create a ticket
1. `ticket.create_ticket("Helene Martin", 2, '23/5/2014 10:00' )` all three arguments must be passed in the first being the name, 
the second being the exhibition_id and the third the date.

2.  The API should now give back the following response `Created a ticket`

### To delete a ticket
1.`ticket.delete_ticket(id)` deletes the ticket based on the id passed in

2. The API should now give back the following response 'Ticket deleted`


![alt text][http://d1s3728j9dx8i6.cloudfront.net/fileadmin/artsjob/user_upload/images/recruitment.gif]

### Contributing

1. Fork it ( http://github.com/<my-github-username>/arts_gallery_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
