require "rails_helper"

RSpec.describe SessionsController, type: :routing do
  describe "routing" do

    it "routes to #create" do
      expect(:get => "/auth/github/callback").to route_to(controller: "sessions", action: "create", provider: "github")
    end

    it "routes to #destroy" do
      expect(:delete => "/signout").to route_to("sessions#destroy")
    end
  end
end
