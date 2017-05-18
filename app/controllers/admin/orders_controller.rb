class Admin::OrdersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
    @orders = Order.order("id DESC")

    colors = ['rgba(255, 99, 132, 0.2)',
              'rgba(54, 162, 235, 0.2)',
              'rgba(255, 206, 86, 0.2)',
              'rgba(75, 192, 192, 0.2)',
              'rgba(153, 102, 255, 0.2)',
              'rgba(255, 159, 64, 0.2)'
              ]

    orders_names = @orders.map { |t| t.aasm_state }
    dates = (@orders.order("id ASC").first.created_at.to_date..Date.today).to_a

    @data1 = {
        labels: dates,
        datasets: [{
          label: "# of Orders",
          data: dates.map{ |d| @orders.where( "created_at >= ? AND created_at <= ?", d.beginning_of_day, d.end_of_day).count },
          backgroundColor: colors,
          borderWidth: 1
        }]
    }

    # status_colors = { true => "#FF6384",
    #                false => "#36A2EB"}

    status_colors = {"order_placed" => "#FF6384", "paid","shipping" => "#36A2EB" , "shipped" => "#3BBBBB", "order_cancelled" => "#3EEEEE", "good_returned" =>"#6682EB"}


    if @orders.any?
     dates = (@orders.order("id ASC").first.created_at.to_date..Date.today).to_a

     @data3 = {
        labels: dates,
        dataset: Order::ASSM.map do |s|
          {
            :label => I18n.t(s, :scope => "order.aasm_state"),
            :data => dates.map{ |d|
              @orders.where( "created_at >= ? AND created_at <= ?", d.beginning_of_day, d.end_of_day).count
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
