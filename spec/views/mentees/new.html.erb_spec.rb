require 'rails_helper'

RSpec.describe "mentees/new", type: :view do
  before(:each) do
    assign(:mentee, Mentee.create!(email: 'lala@email.com', name: 'lala'))
  end

  it "renders new mentee form" do
    render

    assert_select "form[action=?][method=?]", mentees_path, "post" do
    end
  end
end
