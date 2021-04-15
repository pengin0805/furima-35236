class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new
  end

  def create
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    if @order_addrels ss.valid?
      @order_address.save
    redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:postal_code, :metropolis_id, :city, :address, :building, :phone_number).merge(user_id: current_user.id, item_id: Item.find(params[:item_id]).id)
  end

end
