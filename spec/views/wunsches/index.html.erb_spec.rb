require 'rails_helper'

RSpec.describe "wunsches/index", type: :view do
  before(:each) do
    assign(:wunsches, [
      Wunsch.create!(
        :name => "Name",
        :anzahl => 1,
        :geschenkt => false,
        :preis => 1.5,
        :link => "Link",
        :beschreibung => "MyText",
        :u_id => 2
      ),
      Wunsch.create!(
        :name => "Name",
        :anzahl => 1,
        :geschenkt => false,
        :preis => 1.5,
        :link => "Link",
        :beschreibung => "MyText",
        :u_id => 2
      )
    ])
  end

  it "renders a list of wunsches" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
