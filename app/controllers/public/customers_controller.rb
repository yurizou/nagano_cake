class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
    @customer = Customers.find(params[:id])
  end
  
  def update
    @customer = Customers.find(params[:id])
    Customer.update(customer.params)
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
