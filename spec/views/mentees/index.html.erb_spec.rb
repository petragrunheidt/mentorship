require "rails_helper"

RSpec.describe "mentees/index", type: :view do
  before(:each) do
    assign(:mentees, [create(:mentee), create(:mentee)])
  end

  it "renders a list of mentees" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
  end
end
