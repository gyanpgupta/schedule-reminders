FactoryBot.define do
  factory :reminder do
    title { "MyString" }
    description { "MyText" }
    month_day { 1 }
    month_direction { "start_of_month" }
    time { "MyString" }
  end
end
