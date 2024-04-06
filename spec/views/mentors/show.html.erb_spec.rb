require 'rails_helper'

RSpec.describe "mentors/show", type: :view do
  before(:each) do
    assign(:mentor, Mentor.create!(email: "fake@email.com", name: "Fake Name"))
  end

  it "renders attributes in <p>" do
    render
  end
end
