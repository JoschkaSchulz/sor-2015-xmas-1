require 'rails_helper'

RSpec.describe "wunsches/show", type: :view do
  before(:each) do
    @wunsch = assign(:wunsch, Wunsch.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
