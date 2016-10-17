require 'rails_helper'

RSpec.describe "edificis/index", type: :view do
  before(:each) do
    assign(:edificis, [
      Edifici.create!(
        :user_id => 2,
        :nom_edifici => "Nom Edifici",
        :tipus_edifici => "Tipus Edifici"
      ),
      Edifici.create!(
        :user_id => 2,
        :nom_edifici => "Nom Edifici",
        :tipus_edifici => "Tipus Edifici"
      )
    ])
  end

  it "renders a list of edificis" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Nom Edifici".to_s, :count => 2
    assert_select "tr>td", :text => "Tipus Edifici".to_s, :count => 2
  end
end
