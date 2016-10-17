require 'rails_helper'

RSpec.describe "Edificis", type: :request do
  describe "GET /edificis" do
    it "works! (now write some real specs)" do
      get edificis_path
      expect(response).to have_http_status(200)
    end
  end
end
