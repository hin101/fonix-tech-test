FactoryBot.define do
  factory :chatroom do
    topic { Faker::Football.team }
  end
end