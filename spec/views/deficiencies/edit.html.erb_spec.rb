require 'rails_helper'

RSpec.describe "deficiencies/edit", type: :view do
  before(:each) do
    @deficiencia = assign(:deficiencia, Deficiencia.create!(
      :edifici_id => 1,
      :descripcio => "MyText",
      :sistema => "MyString",
      :qualificacio => "MyString"
    ))
  end

  it "renders the edit deficiencia form" do
    render

    assert_select "form[action=?][method=?]", deficiencia_path(@deficiencia), "post" do

      assert_select "input#deficiencia_edifici_id[name=?]", "deficiencia[edifici_id]"

      assert_select "textarea#deficiencia_descripcio[name=?]", "deficiencia[descripcio]"

      assert_select "input#deficiencia_sistema[name=?]", "deficiencia[sistema]"

      assert_select "input#deficiencia_qualificacio[name=?]", "deficiencia[qualificacio]"
    end
  end
end
