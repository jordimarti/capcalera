require 'rails_helper'

RSpec.describe "ites/index", type: :view do
  before(:each) do
    assign(:ites, [
      Ite.create!(
        :edifici_id => 2,
        :existeix => false
      ),
      Ite.create!(
        :edifici_id => 2,
        :existeix => false
      )
    ])
  end

  it "renders a list of ites" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
