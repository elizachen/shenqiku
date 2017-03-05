class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items, source: :product

  def add_product_to_cart(product)
    ci = cart_items.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end

  def total_price
    sum = 0

    cart_items.each do |cart_item|
      if cart_item.product.price.present?
        if cart_item.product.id==2 || cart_item.product.id==4
          if cart_item.product.fund_price1==0
            sum += cart_item.quantity * cart_item.product.fund_price2
          elsif cart_item.product.fund_price2==0
            sum += cart_item.quantity * cart_item.product.fund_price1
          end
        else
          sum += cart_item.quantity * cart_item.product.price
        end
      end
    end


    sum
  end

  def clean!
    cart_items.destroy_all
  end

end
