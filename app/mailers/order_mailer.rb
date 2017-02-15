class OrderMailer < ApplicationMailer
  def notify_order_placed(order)
    @order       = order
    @user        = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email , subject: "[shenqiku] 感谢您完成本次的下单，以下是您这次购物明细 #{order.token}")
  end
<<<<<<< HEAD

  def apply_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: "admin@test.com", subject: "[shenqiku] 用户#{order.user.email}申请取消订单 #{order.token}")
  end

  def notify_ship(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject:"[shenqiku]  您的订单 #{order.token}已发货")
  end

  def notify_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject:"[shenqiku]  您的订单 #{order.token}已取消")

  end

=======
>>>>>>> 5f0c1fe6c28320d2e893e691b5f1ecef53089db9
end
