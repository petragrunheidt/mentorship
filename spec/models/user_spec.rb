require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_one(:mentee) }
  it { is_expected.to have_one(:mentor)}
end
