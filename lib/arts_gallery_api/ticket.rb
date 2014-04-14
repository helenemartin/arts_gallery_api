require "httparty"

module ArtsGalleryApi
  class Ticket
    include HTTParty

    def create_a_ticket(name, exhibition_id, entry_at)
      options = { :body => { :ticket => { :name => "#{name}" , :exhibition_id => 
        "#{exhibition_id}", :entry_at => "#{entry_at}"} } }
      HTTParty.post("http://arts-api.herokuapp.com/tickets", options)
    end
  end
end