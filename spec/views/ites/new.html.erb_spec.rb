require 'rails_helper'

RSpec.describe "ites/new", type: :view do
  before(:each) do
    assign(:ite, Ite.new(
      :edifici_id => 1,
      :existeix => false
    ))
  end

  it "renders new ite form" do
    render

    assert_select "form[action=?][method=?]", ites_path, "post" do

      assert_select "input#ite_edifici_id[name=?]", "ite[edifici_id]"

      assert_select "input#ite_existeix[name=?]", "ite[existeix]"
    end
  end
end
