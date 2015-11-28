require 'rails_helper'

RSpec.describe "wunsches/new", type: :view do
  before(:each) do
    assign(:wunsch, Wunsch.new(
      :name => "MyString",
      :anzahl => 1,
      :geschenkt => false,
      :preis => 1.5,
      :link => "MyString",
      :beschreibung => "MyText",
      :u_id => 1
    ))
  end

  it "renders new wunsch form" do
    render

    assert_select "form[action=?][method=?]", wunsches_path, "post" do

      assert_select "input#wunsch_name[name=?]", "wunsch[name]"

      assert_select "input#wunsch_anzahl[name=?]", "wunsch[anzahl]"

      assert_select "input#wunsch_geschenkt[name=?]", "wunsch[geschenkt]"

      assert_select "input#wunsch_preis[name=?]", "wunsch[preis]"

      assert_select "input#wunsch_link[name=?]", "wunsch[link]"

      assert_select "textarea#wunsch_beschreibung[name=?]", "wunsch[beschreibung]"

      assert_select "input#wunsch_u_id[name=?]", "wunsch[u_id]"
    end
  end
end
