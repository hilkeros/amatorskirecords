class CardsController < ApplicationController
  def new
    @order = Order.find(params[:order])
    @card = Card.new
  end

  def create
    @card = Card.new(params[:card])
    if @card.save
      redirect_to root_url, :notice => "Successfully created card."
    else
      render :action => 'new'
    end
  end
end
