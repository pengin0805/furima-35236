FactoryBot.define do
  factory :item do
    item_name { Faker::Commerce.product_name }
    item_info { Faker::Lorem.sentence }
    category_id { 3 }
    condition_id { 2 }
    shipping_fee_id { 2 }
    shipping_area_id { 4 }
    shipping_day_id { 3 }
    price { Faker::Number.number(digits: 4) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
