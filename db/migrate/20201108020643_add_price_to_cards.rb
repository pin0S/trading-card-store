class AddPriceToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :price, :integer
  end
end
