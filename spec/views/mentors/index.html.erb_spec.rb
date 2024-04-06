require 'rails_helper'

RSpec.describe "mentors/index", type: :view do
  before(:each) do
    assign(:mentors, [
      Mentor.create!(email: "fake@email.com", name: "Fake Name"),
      Mentor.create!(email: "some@email.com", name: "Some Name")
    ])
  end

  it "renders a list of mentors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
