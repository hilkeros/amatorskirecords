class OrdersController < ApplicationController
  def new
    @order = Order.new
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def create
    @order = Order.new(params[:order])
    @order.save!
    if @order.pay_type == 'credit'
      render :action => 'credit'
    else
      render :action => 'bank'
    end
  end
  
  def bank
     @order = Order.find(params[:id])
     
  end
  
  def credit
    @order = Order.find(params[:id])
    @order.ip_address = request.remote_ip
    
  end
  
end
