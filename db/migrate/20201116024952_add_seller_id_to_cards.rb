class AddSellerIdToCards < ActiveRecord::Migration[6.0]
  def change
    add_reference :cards, :seller, foreign_key: { to_table: :cards }
    add_reference :cards, :buyer, foreign_key: { to_table: :cards }
    remove_reference :cards, :user, index: true, foreign_key: true
    remove_reference :orders, :user, index: true, foreign_key: true
  end
end
