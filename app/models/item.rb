class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_fee
  belongs_to :shipping_area
  belongs_to :shipping_day
  
  validates :item_name, presence: true
  validates :item_info, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :condition_id, numericality: { other_than: 1 }
  validates :shipping_fee_id, numericality: { other_than: 1 }
  validates :shipping_area_id, numericality: { other_than: 1 }
  validates :shipping_day_id, numericality: { other_than: 1 }
  validates :price, format: { with: /\A[0-9]+\z/}
  validates :price, numericality: {greater_than_or_equal_to: 300,less_than_or_equal_to: 9999999 }
  validates :image, presence: true, unless: :attached?

  # def price_error
  #   if price.blank?*
  #     errors[:base] = 'd'
  #   elsif email.match(/\A[0-9]+\z/) ==nil
  #     errors[:base] = 'e'
  #   end
  # end

  def attached?
    self.image.attached?
  end

end
