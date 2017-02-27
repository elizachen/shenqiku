class AddDiscountToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :is_discounted, :boolean
    add_column :products, :original_price, :integer
  end
end
