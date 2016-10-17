require 'rails_helper'

RSpec.describe "edificis/show", type: :view do
  before(:each) do
    @edifici = assign(:edifici, Edifici.create!(
      :user_id => 2,
      :nom_edifici => "Nom Edifici",
      :tipus_edifici => "Tipus Edifici"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nom Edifici/)
    expect(rendered).to match(/Tipus Edifici/)
  end
end
