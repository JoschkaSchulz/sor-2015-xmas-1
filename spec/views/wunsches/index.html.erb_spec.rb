require 'rails_helper'

RSpec.describe "wunsches/index", type: :view do
  before(:each) do
    assign(:wunsches, [
      Wunsch.create!(),
      Wunsch.create!()
    ])
  end

  it "renders a list of wunsches" do
    render
  end
end
