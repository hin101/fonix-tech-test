FactoryBot.define do
  factory :message do
    association :user
    association :chatroom
    content { "Awesome" }
  end
end