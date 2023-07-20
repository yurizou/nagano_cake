class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :item
  enum order_status: { 入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4 }
  enum order_detail_making_status: { 着手不可: 0, 制作待ち: 1, 製作中: 2, 最作完了: 3 }
end
