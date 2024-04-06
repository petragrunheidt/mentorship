require "rails_helper"

RSpec.describe "mentees/show", type: :view do
  before(:each) do
    assign(:mentee, create(:mentee))
  end

  it "renders attributes in <p>" do
    render
  end
end
