require "spec_helper"

describe NotebooksController do
  describe "routing" do

    it "routes to #index" do
      get("/notebooks").should route_to("notebooks#index")
    end

    it "routes to #new" do
      get("/notebooks/new").should route_to("notebooks#new")
    end

    it "routes to #show" do
      get("/notebooks/1").should route_to("notebooks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/notebooks/1/edit").should route_to("notebooks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/notebooks").should route_to("notebooks#create")
    end

    it "routes to #update" do
      put("/notebooks/1").should route_to("notebooks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/notebooks/1").should route_to("notebooks#destroy", :id => "1")
    end

  end
end
