require "rails_helper"

RSpec.describe Mentee, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }

    it { is_expected.to validate_presence_of(:name) }

    it { is_expected.to belong_to(:user) }
  end
end
