require 'rails_helper'

RSpec.describe "Creators", type: :request do
  describe "GET /index" do
    it "responds successfully" do 
      get "https://api.rawg.io/api/creators" 
      expect(response.status).to eq(200)
    end

    it "JSON results response contains expected creator-roles attributes" do
      get "https://api.rawg.io/api/creator-roles"
      json_response = JSON.parse(response.body)
      expect(json_response["data"]["results"].first.keys).to match_array(["id", "name", "slug"])
    end

    it "handles exception" do
      allow(RestClient::Request).to receive(:execute).and_raise(RestClient::ExceptionWithResponse)
      #expect(RestClient::Request).to receive(:execute).with({method:"GET"})
      get "https://api.rawg.io/api/creator-roles"
      json_response = JSON.parse(response.body)
      expect(json_response["data"]).to eq("Service Unavailable. Please try again!")
    end
  end
end
