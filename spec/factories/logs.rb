FactoryBot.define do
  factory :log do
    suit          {Faker::Name.last_name}
    min           {Faker::Number.between(from: 1, to: 100) }
    depth         {Faker::Number.between(from: 1, to: 40) }
    place         {Faker::Address.city }
    transparency  {Faker::Number.between(from: 1, to: 50) }
    temperature   {Faker::Number.between(from: 1, to: 40) }
    date          {Faker::Date.between(from: '2000-01-01', to: '2020-12-31')}
    impressions   {Faker::Name.name}
    association :user
  end
end
