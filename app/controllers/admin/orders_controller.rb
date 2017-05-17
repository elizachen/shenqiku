class Admin::OrdersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @orders = Order.order("id DESC")

    if @orders.any?
     dates = (@orders.order("id ASC").first.created_at.to_date..Date.today).to_a
     

     @data3 = {
       labels: dates,
       datasets: Order::aasm_state.map do |s|
         {
           :label => I18n.t(s, :scope => "order.total"),
           :data => dates.map{ |d|
             @orders.total(s).where( "created_at >= ? AND created_at <= ?", d.beginning_of_day, d.end_of_day).count
           },
           borderColor: status_colors[s]
         }
       end
     }
   end

  end

  def show
    @order = Order.find(params[:id])
    @product_lists = @order.product_lists
  end

  def ship
    @order = Order.find(params[:id])
    @order.ship!
    # OrderMailer.notify_ship(@order).deliver!
    redirect_to :back
  end

  def shipped
    @order = Order.find(params[:id])
    @order.deliver!
    redirect_to :back
  end

  def cancel
    @order = Order.find(params[:id])
    @order.cancell_order!
    # OrderMailer.notify_cancel(@order).deliver!
    redirect_to :back
  end

  def return
    @order = Order.find(params[:id])
    @order.return_good!
    redirect_to :back
  end



end
