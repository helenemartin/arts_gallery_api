require "spec_helper"


describe ArtsGalleryApi::Ticket do
  let(:name) { "Helene Martin"}
  let(:exhibition_id) { 2 }
  let(:entry_at) { '23/5/2014 10:00' }
  describe '#create_a_ticket' do
    it "creates a ticket" do
      ticket_data = { :body => { :ticket => { :name => "#{name}" , :exhibition_id => 
        "#{exhibition_id}", :entry_at => "#{entry_at}"} } }
      HTTParty.should_receive(:post, :body => ticket_data).and_return("Created a ticket")
      subject.create_a_ticket(name, exhibition_id, entry_at).should eq("Created a ticket")
    end
  end

  describe ArtsGalleryApi::Ticket do
    describe '#delete_a_ticket' do
    it "deletes a ticket" do
      id = 1
      HTTParty.should_receive(:delete).with("http://arts-api.herokuapp.com/ticket/#{id}").and_return("Deleted a ticket")
      subject.delete_a_ticket(id).should eq("Deleted a ticket")
    end
  end
  end
end