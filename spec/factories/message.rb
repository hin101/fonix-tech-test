FactoryBot.define do
  factory :message do
    association :user
    association :chatroom
  end
end