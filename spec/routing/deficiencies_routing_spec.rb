require "rails_helper"

RSpec.describe DeficienciesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/deficiencies").to route_to("deficiencies#index")
    end

    it "routes to #new" do
      expect(:get => "/deficiencies/new").to route_to("deficiencies#new")
    end

    it "routes to #show" do
      expect(:get => "/deficiencies/1").to route_to("deficiencies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/deficiencies/1/edit").to route_to("deficiencies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/deficiencies").to route_to("deficiencies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/deficiencies/1").to route_to("deficiencies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/deficiencies/1").to route_to("deficiencies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/deficiencies/1").to route_to("deficiencies#destroy", :id => "1")
    end

  end
end
