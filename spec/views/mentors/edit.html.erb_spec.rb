require 'rails_helper'

RSpec.describe "mentors/edit", type: :view do
  let(:mentor) {
    Mentor.create!(email: "fake@email.com", name: "Fake Name")
  }

  before(:each) do
    assign(:mentor, mentor)
  end

  it "renders the edit mentor form" do
    render

    assert_select "form[action=?][method=?]", mentor_path(mentor), "post" do
    end
  end
end
