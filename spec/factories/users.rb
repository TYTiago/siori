FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {Faker::Internet.free_email}
    password              {"0000aaa"}
    password_confirmation {password}
  end
end