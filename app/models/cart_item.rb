class CartItem < ApplicationRecord
  def subtotal
    items.with_tax_price * amount    
  end
end
