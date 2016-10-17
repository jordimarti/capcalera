require 'rails_helper'

RSpec.describe "edificis/new", type: :view do
  before(:each) do
    assign(:edifici, Edifici.new(
      :user_id => 1,
      :nom_edifici => "MyString",
      :tipus_edifici => "MyString"
    ))
  end

  it "renders new edifici form" do
    render

    assert_select "form[action=?][method=?]", edificis_path, "post" do

      assert_select "input#edifici_user_id[name=?]", "edifici[user_id]"

      assert_select "input#edifici_nom_edifici[name=?]", "edifici[nom_edifici]"

      assert_select "input#edifici_tipus_edifici[name=?]", "edifici[tipus_edifici]"
    end
  end
end
