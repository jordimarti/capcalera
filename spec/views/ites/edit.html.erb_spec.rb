require 'rails_helper'

RSpec.describe "ites/edit", type: :view do
  before(:each) do
    @ite = assign(:ite, Ite.create!(
      :edifici_id => 1,
      :existeix => false
    ))
  end

  it "renders the edit ite form" do
    render

    assert_select "form[action=?][method=?]", ite_path(@ite), "post" do

      assert_select "input#ite_edifici_id[name=?]", "ite[edifici_id]"

      assert_select "input#ite_existeix[name=?]", "ite[existeix]"
    end
  end
end
