FactoryBot.define do
  factory :mentee do
    name { SecureRandom.alphanumeric(8) }
    email { "#{SecureRandom.alphanumeric(8)}@email.com" }
    bio { SecureRandom.alphanumeric(128) }
    user
  end
end
