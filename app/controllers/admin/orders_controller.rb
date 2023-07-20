class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_detail = Order.order_details(order.id)
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to admin_order_path
  end
end
