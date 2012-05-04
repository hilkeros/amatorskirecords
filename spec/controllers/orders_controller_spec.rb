require 'spec_helper'

describe OrdersController do

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
  end
  
  before(:each) do
    @order = Factory(:order)
  end
  
  describe "GET 'show'" do
    it "should be successful" do
      get :show, :id => @order
      response.should be_success
    end
    
    it "should find the right order" do
      get :show, :id => @order
      assigns(:order).should == @order
    end
  end

end
