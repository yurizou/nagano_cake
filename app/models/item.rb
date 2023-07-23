class Item < ApplicationRecord
 belongs_to :genre
 has_one_attached :image
 has_many :cart_items, dependent: :destroy
 has_many :order_details, dependent: :destroy
 
 validates :image, presence: true
 validates :name,presence: true
 validates :introduction, presence: true
 validates :price, presence: true
 validates :genre_id, presence: true 
 validates :is_active, presence: true
 
 def with_tax_price
  (price * 1.1).round
 end
end
