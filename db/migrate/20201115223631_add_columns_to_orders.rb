class AddColumnsToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :striperef, :string
    add_column :orders, :receipt, :string
  end
end

