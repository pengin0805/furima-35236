FactoryBot.define do
  factory :order_address do
    postal_code { '123-4567'}
    metropolis_id { 2 }
    city {'千葉市'}
    address {'1-1'}
    building {'ツイン'}
    phone_number {'09011111111'}
  end
end
