class Public::OrdersController < ApplicationController
  def complete

  end

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    
  end

  def show
   @order = Order.find(params[:id])
   @neworder = Order.new
  end

  def confirm
    @order = Order.new(order_params)
    @order.postal_code = current_customer.postal_code
    @order.address = current_customer.address
    @order.name = current_customer.first_name + current_customer.last_name
    @cart_items = current_customer.cart_items
    @order.shipping = 800
    @total = 0
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save
    @cart_items = current_customer.cart_items
    @cart_items.each do |cart_item|
    order_detail = OrderDetail.new(order_id:@order.id)
    order_detail.item_id = cart_item.item.id
    order_detail.quantity = cart_item.amount
    order_detail.price = cart_item.item.price
    order_detail.save
    end
    #カートを消す作業
    cart_items = current_customer.cart_items
    cart_items.destroy_all
    redirect_to complete_path

  end

  private
  def order_params
    params.require(:order).permit(:method, :postal_code, :address, :name, :shipping, :payment)
  end
end
