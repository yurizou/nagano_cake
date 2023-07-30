class Admin::OrdersDetailsController < ApplicationController
  def update
    order_detail = OrderDetail.find(params[:id])
    @order = order_detail.order
      order_detail.update(order_detail_params)
     if order_detail.making_status == "production"
        order_detail.order.update(status: "production")
    
     end
     if @order.check_status != false
       @order.update(status: "preparing_to_ship")
     end
      redirect_to admin_order_path(order_detail.order.id)
  end

  private
  def order_detail_params
    params.require(:order_detail).permit(:making_status)
  end
end
