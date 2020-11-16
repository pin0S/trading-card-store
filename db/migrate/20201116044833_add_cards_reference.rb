class AddCardsReference < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :seller, foreign_key: { to_table: :users }
    add_reference :cards, :buyer, foreign_key: { to_table: :users }
  end
end
