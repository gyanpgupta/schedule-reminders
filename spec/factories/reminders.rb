FactoryBot.define do
  factory :reminder do
    sequence(:title) { |n| "title#{n}" }
    description { 'description' }
    month_day { (1..20).to_a.sample }
    month_direction { %w[start_of_month end_of_month].sample }
    time { Time.now }
    association :user, factory: :user
  end
end
