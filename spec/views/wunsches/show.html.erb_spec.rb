require 'rails_helper'

RSpec.describe "wunsches/show", type: :view do
  before(:each) do
    @wunsch = assign(:wunsch, Wunsch.create!(
      :name => "Name",
      :anzahl => 1,
      :geschenkt => false,
      :preis => 1.5,
      :link => "Link",
      :beschreibung => "MyText",
      :u_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
