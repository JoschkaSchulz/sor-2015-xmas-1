require 'rails_helper'

RSpec.describe "wunsches/edit", type: :view do
  before(:each) do
    @wunsch = assign(:wunsch, Wunsch.create!())
  end

  it "renders the edit wunsch form" do
    render

    assert_select "form[action=?][method=?]", wunsch_path(@wunsch), "post" do
    end
  end
end
