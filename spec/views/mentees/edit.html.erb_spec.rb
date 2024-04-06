require "rails_helper"

RSpec.describe "mentees/edit", type: :view do
  let(:mentee) { create(:mentee) }

  before(:each) do
    assign(:mentee, mentee)
  end

  it "renders the edit mentee form" do
    render

    assert_select "form[action=?][method=?]", mentee_path(mentee), "post" do
    end
  end
end
