class OrdersController < ApplicationController
  before_action :authenticate_user! #devise offers this
  SALES_TAX = 0.09
  def create
    @order = Order.create(user_id: current_user.id) ##creates a row in the table with the id of the order and the user_id filled out

    @carted_tacos = current_user.carted_tacos.where(status: "carted")

    @purple_hippo = 0
    @carted_tacos.each do |carted_taco|
        carted_taco.update(order_id: @order.id)
        @purple_hippo += carted_taco.taco.price * carted_taco.quantity
        carted_taco.update(status: "purchased")
    end

    subtotal = @purple_hippo
    tax = subtotal * 0.09
    total_price = subtotal + tax.to_f

    @order.update(subtotal: subtotal, tax: tax, total_price: total_price)

    redirect_to "/orders/#{@order.id}"
    
  end

  def show
    @order = Order.find_by(id: params[:id])
    if @order.user_id != current_user.id
      redirect_to "/"
    end
  end

  def edit
    @order = Order.find_by(id: params[:id])
  end


  end
