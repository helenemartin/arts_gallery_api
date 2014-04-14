require "httparty"
require "json"

module ArtsGalleryApi
  
  class Gallery
    include HTTParty

    def all
      HTTParty.get("http://arts-api.herokuapp.com/galleries").parsed_response 
    end

    def retrieve_a_gallery(id)
      HTTParty.get("http://arts-api.herokuapp.com/galleries/#{id}").parsed_response
    end
  end
end