class OrdersController < ApplicationController
  def create
    quantity = params[:quantity].to_i
    price = Taco.find_by(id: params[:taco_id]).price
    subtotal = price * quantity
    tax = subtotal * 0.09
    total = subtotal + tax.to_f
    @order = Order.create(quantity: params[:quantity], taco_id: params[:taco_id], subtotal: subtotal, tax: tax, total_price: total, user_id: current_user.id)

    redirect_to "/orders/#{@order.id}"
    
  end

  def show
    @tacos = Taco.all
    @tacos = Taco.find_by(id: params[:id])
    #@order = Order.all
    @order = Order.find_by(id: params[:id])
    @users = User.all
    @email = current_user

  end


  end
