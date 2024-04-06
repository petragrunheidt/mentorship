FactoryBot.define do
  factory :user do
    email { "#{SecureRandom.alphanumeric(8)}@email.com"}
    password { "password123" }
  end
end
