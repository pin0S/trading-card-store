class ChangePriceColumnInCardsToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column(:cards, :price, :decimal, :precision => 9, :scale => 2)
  end
end
