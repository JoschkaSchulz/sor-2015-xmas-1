require "rails_helper"

RSpec.describe WunschesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wunsches").to route_to("wunsches#index")
    end

    it "routes to #new" do
      expect(:get => "/wunsches/new").to route_to("wunsches#new")
    end

    it "routes to #show" do
      expect(:get => "/wunsches/1").to route_to("wunsches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wunsches/1/edit").to route_to("wunsches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wunsches").to route_to("wunsches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wunsches/1").to route_to("wunsches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wunsches/1").to route_to("wunsches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wunsches/1").to route_to("wunsches#destroy", :id => "1")
    end

  end
end
