class Admin::CustomersController < ApplicationController
  
  def index
    @customers = Customer.all
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
  
  def update
    customer = Customer.find(params[:id])
    customer.update(customer_params)
    redirect_to admin_customer_path(customer.id)
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  private
  def customer_params
    params.require(:customer).permit(:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :number, :email, :is_delete)
  end
end
