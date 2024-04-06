class Mentor < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  validates :name, presence: true

  belongs_to :user
end
