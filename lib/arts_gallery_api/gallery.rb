require "httparty"
require "json"

module ArtsGalleryApi
  
  class Gallery
    attr_accessor :response
    include HTTParty

    def initialize
      @response = nil
    end

    def all
      @response = HTTParty.get("http://arts-api.herokuapp.com/galleries").parsed_response 
    end

    def retrieve_a_gallery(id)
      @response = HTTParty.get("http://arts-api.herokuapp.com/galleries/#{id}").parsed_response
    end
    
    def get_gallery_exhibitions(id)
      @response = HTTParty.get("http://arts-api.herokuapp.com/galleries/#{id}/exhibitions").parsed_response
    end

    def get_exhibition(id)
      @response = HTTParty.get("http://arts-api.herokuapp.com/exhibitions/#{id}").parsed_response
    end
  end
end