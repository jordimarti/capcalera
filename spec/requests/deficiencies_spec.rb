require 'rails_helper'

RSpec.describe "Deficiencies", type: :request do
  describe "GET /deficiencies" do
    it "works! (now write some real specs)" do
      get deficiencies_path
      expect(response).to have_http_status(200)
    end
  end
end
