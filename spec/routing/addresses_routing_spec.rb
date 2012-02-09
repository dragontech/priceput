require "spec_helper"

describe AddressesController do
  describe "routing" do

    it "routes to #index" do
      get("/suppliers/1/addresses").should route_to("addresses#index", :supplier_id => "1")
    end

    it "routes to #new" do
      get("/suppliers/1/addresses/new").should route_to("addresses#new", :supplier_id => "1")
    end

    it "routes to #show" do
      get("/suppliers/1/addresses/1").should route_to("addresses#show", :id => "1", :supplier_id => "1")
    end

    it "routes to #edit" do
      get("/suppliers/1/addresses/1/edit").should route_to("addresses#edit", :id => "1", :supplier_id => "1")
    end

    it "routes to #create" do
      post("/suppliers/1/addresses").should route_to("addresses#create", :supplier_id => "1")
    end

    it "routes to #update" do
      put("/suppliers/1/addresses/1").should route_to("addresses#update", :id => "1", :supplier_id => "1")
    end

    it "routes to #destroy" do
      delete("/suppliers/1/addresses/1").should route_to("addresses#destroy", :id => "1", :supplier_id => "1")
    end

  end
end
