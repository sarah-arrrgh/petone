class OrderController < ApplicationController

  def new
  end

  def create
    Order.create(order_params)
    redirect_to order_index_path
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to order_index_path
  end

  def index
    @orders = Order.all
  end

  private
    def order_params
      params.require(:order).permit(:member_name,:member_number,:apples_kg,:oranges_kg,:broccoli_ct)
    end

end
