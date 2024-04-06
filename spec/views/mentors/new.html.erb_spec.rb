require 'rails_helper'

RSpec.describe "mentors/new", type: :view do
  before(:each) do
    assign(:mentor, Mentor.new())
  end

  it "renders new mentor form" do
    render

    assert_select "form[action=?][method=?]", mentors_path, "post" do
    end
  end
end
