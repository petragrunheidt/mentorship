FactoryBot.define do
  factory :mentor do
    name { SecureRandom.alphanumeric(8) }
    email { "#{SecureRandom.alphanumeric(8)}@email.com" }
    user
  end
end
