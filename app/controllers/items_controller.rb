class ItemsController < ApplicationController
  def index
  end

  def new
    if user_signed_in?
      @item = Item.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    Item.create(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :item_info, :category_id, :condition_id, :shipping_fee_id, :shipping_area_id, :shipping_day_id, :price).merge(user_id: current_user.id)
  end
end
