class ItemsController < ApplicationController
  def index
  end

  def new
    if user_signed_in?
      @items = Item.new
    else
      redirect_to new_user_session_path
    end
  end
end
