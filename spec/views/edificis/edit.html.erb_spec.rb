require 'rails_helper'

RSpec.describe "edificis/edit", type: :view do
  before(:each) do
    @edifici = assign(:edifici, Edifici.create!(
      :user_id => 1,
      :nom_edifici => "MyString",
      :tipus_edifici => "MyString"
    ))
  end

  it "renders the edit edifici form" do
    render

    assert_select "form[action=?][method=?]", edifici_path(@edifici), "post" do

      assert_select "input#edifici_user_id[name=?]", "edifici[user_id]"

      assert_select "input#edifici_nom_edifici[name=?]", "edifici[nom_edifici]"

      assert_select "input#edifici_tipus_edifici[name=?]", "edifici[tipus_edifici]"
    end
  end
end
