class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy
  belongs_to :customer
  enum method: { credit_card: 0, transfer: 1}
  enum status: { wait_for_payment: 0, payment_confirmation: 1, production: 2, preparing_to_ship: 3, shipped: 4}
end
