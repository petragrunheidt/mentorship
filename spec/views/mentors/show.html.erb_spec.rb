require "rails_helper"

RSpec.describe "mentors/show", type: :view do
  before(:each) do
    assign(:mentor, create(:mentor))
  end

  it "renders attributes in <p>" do
    render
  end
end
