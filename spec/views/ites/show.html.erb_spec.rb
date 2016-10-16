require 'rails_helper'

RSpec.describe "ites/show", type: :view do
  before(:each) do
    @ite = assign(:ite, Ite.create!(
      :edifici_id => 2,
      :existeix => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
