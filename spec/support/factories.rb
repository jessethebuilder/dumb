FactoryBot.define do
  factory :product do
    sequence(:name){ |n| "#{Faker::Commerce.product_name}_#{n}" }
  end

  factory :variant do
    price { 0..10000.0 }
    sequence(:name){ |n| "#{Faker::Lorem.word}_#{n}" }
    product
  end

  factory :category do
    sequence(:name){ |n| "#{Faker::Commerce.department}_#{n}" }
    product
  end
end
