FactoryBot.define do
  factory :plan do
    association :user
    title                 {'ああああ'}
    place                 {"ああああ"}
    start_time            {Time.now}

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end