require 'rails_helper'

RSpec.describe "deficiencies/index", type: :view do
  before(:each) do
    assign(:deficiencies, [
      Deficiencia.create!(
        :edifici_id => 2,
        :descripcio => "MyText",
        :sistema => "Sistema",
        :qualificacio => "Qualificacio"
      ),
      Deficiencia.create!(
        :edifici_id => 2,
        :descripcio => "MyText",
        :sistema => "Sistema",
        :qualificacio => "Qualificacio"
      )
    ])
  end

  it "renders a list of deficiencies" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Sistema".to_s, :count => 2
    assert_select "tr>td", :text => "Qualificacio".to_s, :count => 2
  end
end
