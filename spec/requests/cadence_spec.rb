require 'rails_helper'

RSpec.describe "Cadences", type: :request do
  describe "GET /mine" do
    it "returns http success" do
      get "/cadence/mine"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /entry" do
    it "returns http success" do
      get "/cadence/entry"
      expect(response).to have_http_status(:success)
    end
  end

end
