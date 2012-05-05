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
      redirect_to new_card_path(:order => @order.id)
    else
      render :action => 'bank'
    end
  end
  
  def bank
     @order = Order.find(params[:id])
     
  end
  
end
