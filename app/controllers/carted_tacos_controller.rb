class CartedTacosController < ApplicationController
  before_action :authenticate_user! #devise offers this

  def index
    @tacos = Taco.all
    @tacos = Taco.find_by(id: params[:id])
    @carted_tacos = current_user.carted_tacos.where(status: "carted")
    if @carted_tacos == []
      redirect_to "/tacos"
      flash[:warning] = "You have no items in your cart"
    end
  end
  
  def create
    quantity = params[:quantity].to_i
    @cart = CartedTaco.create(status: "carted", quantity: params[:quantity], taco_id: params[:taco_id], user_id: current_user.id)
    redirect_to "/shopping_cart/"
  end

  def edit
    @cart = CartedTaco.all
    @cart = CartedTaco.find_by(id: params[:id])
  end

  def destroy
    carted_tacos = CartedTaco.find_by(id: params[:id])
    carted_tacos.update(status: "Removed")
    flash[:success] = "You have removed your taco"
    redirect_to "/shopping_cart"
  end

end

