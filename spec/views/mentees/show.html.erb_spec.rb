require 'rails_helper'

RSpec.describe "mentees/show", type: :view do
  before(:each) do
    assign(:mentee, Mentee.create!(email: 'lala@email.com', name: 'lala'))
  end

  it "renders attributes in <p>" do
    render
  end
end
