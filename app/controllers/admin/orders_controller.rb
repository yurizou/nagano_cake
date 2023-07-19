class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_detail = Order.order_details(order.id)
  end

  def update

  end
end
