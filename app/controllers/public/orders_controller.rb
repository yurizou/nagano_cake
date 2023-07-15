class Public::OrdersController < ApplicationController
  def complete
    
  end
  
  def index
    
  end
  
  def new
    @order_detail = OrderDetail.new
    
  end
  
  def show
    
  end
  
  def confirm
    @order = Order.new(order_params)
    @order.postal_code = current_customer.postal_code
    @order.address = current_customer.address
    @order.name = current_customer.first_name + current_customer.last_name
    @item = Item.find(params[:id])
    @cart_item = CartItem.find(params[:id])
  end
  
  def create
    
  end
  
  private
  def order_params
    params.require(:order).permit(:payment_method, :postal_code, :address, :name)
  end
end
