class ShopsController < ApplicationController
  before_action :set_item

  def index
    @shops = Shop.all.order(created_at: "DESC")
  end

  def show
    
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    
  end

  private
  def column_params
    params.require(:shop).permit(:name, :text, :images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_item
    @shop = Shop.find(params[:id])
  end

end
