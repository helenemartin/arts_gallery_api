require "spec_helper"

describe ArtsGalleryApi::Gallery do
  let(:gallery) { {"id" => 1,"name" => "Hayward Gallery","description" => "Hayward Gallery"} }
  let(:galleries) { {"galleries" => [{ "name" => "Hayward Gallery", "url" => "/galleries/1",
      "exhibitions" => "/galleries/1/exhibitions" }] } }

  describe "#all" do
    it "retrieves all galleries" do
      response = double(parsed_response: galleries )
      HTTParty.should_receive(:get).and_return(response)
      subject.all.should eq(galleries)
    end
  end

  describe "#retrieve_a_gallery" do
    it "retrieves one gallery" do
      response = double(parsed_response: gallery  )
      HTTParty.should_receive(:get).and_return(response)
      subject.retrieve_a_gallery(1).should eq( gallery ) 
    end
  end
end