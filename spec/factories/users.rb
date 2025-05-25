FactoryBot.define do
  factory :user do
    email {
      case rand(1..3)
      when 1
        "#{SecureRandom.uuid}_@gmail.com"
      when 2
        "#{SecureRandom.uuid}_@yahoo.com"
      else
        "#{SecureRandom.uuid}_@outlook.com"
      end
    }
    name { Faker::Name.name }
    password { Faker::Internet.password }
  end
end

