require "rails_helper"

RSpec.describe ItesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ites").to route_to("ites#index")
    end

    it "routes to #new" do
      expect(:get => "/ites/new").to route_to("ites#new")
    end

    it "routes to #show" do
      expect(:get => "/ites/1").to route_to("ites#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ites/1/edit").to route_to("ites#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ites").to route_to("ites#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ites/1").to route_to("ites#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ites/1").to route_to("ites#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ites/1").to route_to("ites#destroy", :id => "1")
    end

  end
end
