class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :item_info, :category_id, :condition_id, :shipping_fee_id, :shipping_area_id,
                                 :shipping_day_id, :price, :image).merge(user_id: current_user.id)
  end
end
