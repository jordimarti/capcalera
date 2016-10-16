require 'rails_helper'

RSpec.describe "Ites", type: :request do
  describe "GET /ites" do
    it "works! (now write some real specs)" do
      get ites_path
      expect(response).to have_http_status(200)
    end
  end
end
