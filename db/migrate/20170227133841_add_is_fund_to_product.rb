class AddIsFundToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :is_fund, :boolean, default: false
    add_column :products, :fund_price1, :integer, default: 0
    add_column :products, :fund_price2, :integer, default: 0
  end
end
