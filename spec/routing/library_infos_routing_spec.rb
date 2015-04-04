require "spec_helper"

describe LibraryInfosController do
  describe "routing" do

    it "routes to #index" do
      get("/library_infos").should route_to("library_infos#index")
    end

    it "routes to #new" do
      get("/library_infos/new").should route_to("library_infos#new")
    end

    it "routes to #show" do
      get("/library_infos/1").should route_to("library_infos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/library_infos/1/edit").should route_to("library_infos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/library_infos").should route_to("library_infos#create")
    end

    it "routes to #update" do
      put("/library_infos/1").should route_to("library_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/library_infos/1").should route_to("library_infos#destroy", :id => "1")
    end

  end
end
