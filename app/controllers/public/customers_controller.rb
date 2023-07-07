class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
    @newcustomer = Customer.new
  end
  
  def edit
    @customer = current_customer
  end
  
  def update
    @customer = current_customer
    @customer.update(customers_params)
    redirect_to customers_my_page_path
  end
  
  def confirm
    
  end
  
  def quit
    
  end
  
   private

  def customers_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :number, :email)
  end
end
