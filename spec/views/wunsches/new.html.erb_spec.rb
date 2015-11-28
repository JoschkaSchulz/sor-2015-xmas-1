require 'rails_helper'

RSpec.describe "wunsches/new", type: :view do
  before(:each) do
    assign(:wunsch, Wunsch.new())
  end

  it "renders new wunsch form" do
    render

    assert_select "form[action=?][method=?]", wunsches_path, "post" do
    end
  end
end
