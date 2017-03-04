class AddIsFundToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :is_fund, :boolean, default: false
  end
end
