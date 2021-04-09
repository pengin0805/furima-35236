class Item < ApplicationRecord
  belongs_to :user
  
  validates :item_name, presence: true
  validates :item_info, presence: true
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :shipping_fee_id, presence: true
  validates :shipping_area_id, presence: true
  validates :shipping_day_id, presence: true
  validates :price, presence: true
  
end
