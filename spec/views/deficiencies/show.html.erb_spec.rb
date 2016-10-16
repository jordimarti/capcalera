require 'rails_helper'

RSpec.describe "deficiencies/show", type: :view do
  before(:each) do
    @deficiencia = assign(:deficiencia, Deficiencia.create!(
      :edifici_id => 2,
      :descripcio => "MyText",
      :sistema => "Sistema",
      :qualificacio => "Qualificacio"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Sistema/)
    expect(rendered).to match(/Qualificacio/)
  end
end
